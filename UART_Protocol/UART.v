`timescale 1ns / 1ps
// UART (Universal Asynchronous Receiver-Transmitter) communication system
module UART(
    input clk,
    input start,
    input [7:0] tx_in,
    input rx,
    output reg tx,
    output [7:0] rx_output,
    output rx_done,
    output tx_done
);
    parameter baud_rate = 9600; // The number of signal units transmitted per second
    reg bit_done = 0; // A trigger signal; if 1, we reach the dedicated loop
    integer count = 0;
    parameter clk_value = 100_000; // The frequency of the system clock
    parameter wait_count = clk_value / (baud_rate);
    // Used to generate the correct timing for sending and receiving bits;
    // therefore, at the count of wait_count, we can send or receive

    parameter idle = 2'b00; // State in which nothing to do
    parameter send = 2'b01; // State in which to send data
    parameter check = 2'b11; // State in which to check data
    reg [1:0] state = idle;

    // Triggering the dedicated signal
    always @(posedge clk) begin
        if (state == idle) begin
            count <= 0;
        end else begin
            if (count >= wait_count) begin
                bit_done <= 1'b1;
                count <= 0;
            end else begin
                count <= count + 1;
                bit_done <= 1'b0;
            end
        end
    end
    //////////////////////////////////// TX Logic ///////////////////////////////
    reg [9:0] tx_data;
    integer bit_index = 0;
    reg [9:0] tx_shift = 0;
    always @(posedge clk) begin
        case (state)
            idle: begin
                tx <= 1'b1;
                tx_data <= 0;
                bit_index <= 0;
                tx_shift <= 0;
                if (start) begin
                    tx_data = {1'b1, tx_in, 1'b0};
                    state <= send;
                end else begin
                    state <= idle;
                end
            end
            send: begin
                tx <= tx_data[bit_index];
                state <= check;
                tx_shift <= {tx_data[bit_index], tx_shift[9:1]};
            end
            check: begin
                if (bit_index <= 9) begin
                    if (bit_done == 1'b1) begin
                        bit_index <= bit_index + 1;
                        state <= send;
                    end
                end else begin
                    state <= idle;
                    bit_index <= 0;
                end
            end
            default: state <= idle;
        endcase
    end

    assign tx_done = (bit_index == 9 && bit_done == 1) ? 1'b1 : 1'b0;
    //////////////////////////////////// RX Logic ///////////////////////////////
    integer rcount = 0;
    integer rindex = 0;
    parameter ridle = 2'b00, rcheck = 2'b01, recv = 2'b10, rwait = 2'b11;
    reg [1:0] rstate = ridle;
    reg [9:0] rxdata;

    always @(posedge clk) begin
        case (rstate)
            ridle: begin
                rxdata <= 0;
                rindex <= 0;
                rcount <= 0;
                if (rx == 1'b0) begin
                    rstate <= rwait;
                end else begin
                    rstate <= ridle;
                end
            end
            rwait: begin
                if (rcount < wait_count / 2) begin
                    rcount <= rcount + 1;
                    rstate <= rwait;
                end else begin
                    rcount <= 0;
                    rstate <= recv;
                    rxdata <= {rx, rxdata[9:1]};
                end
            end
            recv: begin
                if (rindex <= 9) begin
                    if (bit_done == 1'b1) begin
                        rindex <= rindex + 1;
                        rstate <= rwait;
                    end
                end else begin
                    rstate <= ridle;
                    rindex <= 0;
                end
            end
            default: rstate <= ridle;
        endcase
    end
assign rx_output = rxdata[8:1];
assign rx_done = (rindex == 9 && bit_done == 1) ? 1'b1 : 1'b0;
endmodule