module tb_UART;                                                                                                       
    reg clk;                                                                                                          
    reg start;                                                                                                        
    reg [7:0] tx_in;                                                                                                  
    reg rx;                                                                                                           
    wire tx;                                                                                                          
    wire [7:0] rx_output;                                                                                             
    wire rx_done, tx_done;                                                                                            
    // Instantiate the UART module                                                                                    
    UART uut (                                                                                                        
        .clk(clk),                                                                                                    
        .start(start),                                                                                                
        .tx_in(tx_in),                                                                                                
        .rx(rx),                                                                                                      
        .tx(tx),                                                                                                      
        .rx_output(rx_output),                                                                                        
        .rx_done(rx_done),                                                                                            
        .tx_done(tx_done)                                                                                             
    );                                                                                                                
 integer i = 0;                                                                                                       
 initial begin                                                                                                        
 // Apply reset                                                                                                       
 clk <= 0;                                                                                                            
 start <= 0;                                                                                                          
 tx_in <= 8'h00;                                                                                                      
 rx <= 1'b1; // Idle state of RX line                                                                                 
 end                                                                                                                  
                                                                                                                      
 always #5 clk = ~clk;                                                                                                
                                                                                                                      
 initial begin                                                                                                        
 #10 start = 1;                                                                                                       
 for(i = 0; i < 10; i = i + 1) begin                                                                                  
 tx_in = $urandom_range(8'h10, 8'hFF);                                                                                
 @(posedge tx_done);                                                                                                  
 display;                                                                                                             
 end                                                                                                                  
// // Simulate receiving data                                                                                           
// // This requires generating a valid UART signal. Here we'll just simulate                                            
// // the RX line behavior manually for simplicity.                                                                     
 start = 1'b0;                                                                                                        
 rx = 1'b0; // Start bit                                                                                              
 #52000;                         
// Send the data bits (assuming 8 data bits)                                                                          
 rx = 1'b1; #52000; // Bit 0                                                                                         
 rx = 1'b0; #52000; // Bit 1                                                                                         
 rx = 1'b1; #52000; // Bit 2                                                                                         
 rx = 1'b1; #52000; // Bit 3                                                                                         
 rx = 1'b0; #52000; // Bit 4                                                                                         
 rx = 1'b1; #52000; // Bit 5                                                                                         
 rx = 1'b0; #52000; // Bit 6                                                                                         
 rx = 1'b1; #52000; // Bit 7                                                                                         
 rx = 1'b1; // Stop bit                                                                                               
 @(posedge rx_done);                                                                                                  
 display;                                                                                                                                                                                                       
   $stop; // End the simulation                                                                                                               
  end                
                                                                                                                                                                                                                
 task display;                                                                                                        
 begin                                                                                                                
         // Display the received data                                                                                 
         $display("Transmitted Data: %h", tx_in);                                                                     
         $display("Tx Done Signal: %b", tx_done);                                                                     
         $display("Start Signal: %b", start);                                                                         
         $display("Received Data: %h", rx_output);                                                                    
         $display("Resciver Signal: %b", rx);                                                                         
 end                                                                                                                  
 endtask                                                                                                              
                                                                                                                      
 endmodule          