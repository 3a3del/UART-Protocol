// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Jul 31 10:20:15 2024
// Host        : DESKTOP-9SQ9M3B running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/hp/UART_Protocol/UART_Protocol.sim/sim_1/synth/func/xsim/tb_UART_func_synth.v
// Design      : UART
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* baud_rate = "9600" *) (* check = "2'b11" *) (* clk_value = "100000" *) 
(* idle = "2'b00" *) (* rcheck = "2'b01" *) (* recv = "2'b10" *) 
(* ridle = "2'b00" *) (* rwait = "2'b11" *) (* send = "2'b01" *) 
(* wait_count = "10" *) 
(* NotValidForBitStream *)
module UART
   (clk,
    start,
    tx_in,
    rx,
    tx,
    rx_output,
    rx_done,
    tx_done);
  input clk;
  input start;
  input [7:0]tx_in;
  input rx;
  output tx;
  output [7:0]rx_output;
  output rx_done;
  output tx_done;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_10_n_0 ;
  wire \FSM_onehot_state[2]_i_11_n_0 ;
  wire \FSM_onehot_state[2]_i_12_n_0 ;
  wire \FSM_onehot_state[2]_i_14_n_0 ;
  wire \FSM_onehot_state[2]_i_15_n_0 ;
  wire \FSM_onehot_state[2]_i_16_n_0 ;
  wire \FSM_onehot_state[2]_i_17_n_0 ;
  wire \FSM_onehot_state[2]_i_18_n_0 ;
  wire \FSM_onehot_state[2]_i_19_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_20_n_0 ;
  wire \FSM_onehot_state[2]_i_21_n_0 ;
  wire \FSM_onehot_state[2]_i_22_n_0 ;
  wire \FSM_onehot_state[2]_i_23_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state[2]_i_6_n_0 ;
  wire \FSM_onehot_state[2]_i_7_n_0 ;
  wire \FSM_onehot_state[2]_i_9_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_13_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_13_n_1 ;
  wire \FSM_onehot_state_reg[2]_i_13_n_2 ;
  wire \FSM_onehot_state_reg[2]_i_13_n_3 ;
  wire \FSM_onehot_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_2_n_1 ;
  wire \FSM_onehot_state_reg[2]_i_2_n_2 ;
  wire \FSM_onehot_state_reg[2]_i_2_n_3 ;
  wire \FSM_onehot_state_reg[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_3_n_1 ;
  wire \FSM_onehot_state_reg[2]_i_3_n_2 ;
  wire \FSM_onehot_state_reg[2]_i_3_n_3 ;
  wire \FSM_onehot_state_reg[2]_i_8_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_8_n_1 ;
  wire \FSM_onehot_state_reg[2]_i_8_n_2 ;
  wire \FSM_onehot_state_reg[2]_i_8_n_3 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_sequential_rstate[0]_i_1_n_0 ;
  wire \FSM_sequential_rstate[0]_i_2_n_0 ;
  wire \FSM_sequential_rstate[1]_i_10_n_0 ;
  wire \FSM_sequential_rstate[1]_i_11_n_0 ;
  wire \FSM_sequential_rstate[1]_i_12_n_0 ;
  wire \FSM_sequential_rstate[1]_i_13_n_0 ;
  wire \FSM_sequential_rstate[1]_i_15_n_0 ;
  wire \FSM_sequential_rstate[1]_i_16_n_0 ;
  wire \FSM_sequential_rstate[1]_i_17_n_0 ;
  wire \FSM_sequential_rstate[1]_i_18_n_0 ;
  wire \FSM_sequential_rstate[1]_i_1_n_0 ;
  wire \FSM_sequential_rstate[1]_i_20_n_0 ;
  wire \FSM_sequential_rstate[1]_i_21_n_0 ;
  wire \FSM_sequential_rstate[1]_i_22_n_0 ;
  wire \FSM_sequential_rstate[1]_i_23_n_0 ;
  wire \FSM_sequential_rstate[1]_i_25_n_0 ;
  wire \FSM_sequential_rstate[1]_i_26_n_0 ;
  wire \FSM_sequential_rstate[1]_i_27_n_0 ;
  wire \FSM_sequential_rstate[1]_i_28_n_0 ;
  wire \FSM_sequential_rstate[1]_i_30_n_0 ;
  wire \FSM_sequential_rstate[1]_i_31_n_0 ;
  wire \FSM_sequential_rstate[1]_i_32_n_0 ;
  wire \FSM_sequential_rstate[1]_i_33_n_0 ;
  wire \FSM_sequential_rstate[1]_i_34_n_0 ;
  wire \FSM_sequential_rstate[1]_i_35_n_0 ;
  wire \FSM_sequential_rstate[1]_i_36_n_0 ;
  wire \FSM_sequential_rstate[1]_i_37_n_0 ;
  wire \FSM_sequential_rstate[1]_i_38_n_0 ;
  wire \FSM_sequential_rstate[1]_i_39_n_0 ;
  wire \FSM_sequential_rstate[1]_i_40_n_0 ;
  wire \FSM_sequential_rstate[1]_i_41_n_0 ;
  wire \FSM_sequential_rstate[1]_i_42_n_0 ;
  wire \FSM_sequential_rstate[1]_i_43_n_0 ;
  wire \FSM_sequential_rstate[1]_i_44_n_0 ;
  wire \FSM_sequential_rstate[1]_i_45_n_0 ;
  wire \FSM_sequential_rstate[1]_i_5_n_0 ;
  wire \FSM_sequential_rstate[1]_i_6_n_0 ;
  wire \FSM_sequential_rstate[1]_i_7_n_0 ;
  wire \FSM_sequential_rstate[1]_i_8_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_14_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_14_n_1 ;
  wire \FSM_sequential_rstate_reg[1]_i_14_n_2 ;
  wire \FSM_sequential_rstate_reg[1]_i_14_n_3 ;
  wire \FSM_sequential_rstate_reg[1]_i_19_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_19_n_1 ;
  wire \FSM_sequential_rstate_reg[1]_i_19_n_2 ;
  wire \FSM_sequential_rstate_reg[1]_i_19_n_3 ;
  wire \FSM_sequential_rstate_reg[1]_i_24_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_24_n_1 ;
  wire \FSM_sequential_rstate_reg[1]_i_24_n_2 ;
  wire \FSM_sequential_rstate_reg[1]_i_24_n_3 ;
  wire \FSM_sequential_rstate_reg[1]_i_29_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_29_n_1 ;
  wire \FSM_sequential_rstate_reg[1]_i_29_n_2 ;
  wire \FSM_sequential_rstate_reg[1]_i_29_n_3 ;
  wire \FSM_sequential_rstate_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_2_n_1 ;
  wire \FSM_sequential_rstate_reg[1]_i_2_n_2 ;
  wire \FSM_sequential_rstate_reg[1]_i_2_n_3 ;
  wire \FSM_sequential_rstate_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_3_n_1 ;
  wire \FSM_sequential_rstate_reg[1]_i_3_n_2 ;
  wire \FSM_sequential_rstate_reg[1]_i_3_n_3 ;
  wire \FSM_sequential_rstate_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_4_n_1 ;
  wire \FSM_sequential_rstate_reg[1]_i_4_n_2 ;
  wire \FSM_sequential_rstate_reg[1]_i_4_n_3 ;
  wire \FSM_sequential_rstate_reg[1]_i_9_n_0 ;
  wire \FSM_sequential_rstate_reg[1]_i_9_n_1 ;
  wire \FSM_sequential_rstate_reg[1]_i_9_n_2 ;
  wire \FSM_sequential_rstate_reg[1]_i_9_n_3 ;
  wire bit_done_i_1_n_0;
  wire bit_done_reg_n_0;
  wire [31:4]bit_index;
  wire [31:1]bit_index0;
  wire \bit_index[0]_i_1_n_0 ;
  wire \bit_index[31]_i_1_n_0 ;
  wire \bit_index[31]_i_2_n_0 ;
  wire \bit_index_reg[12]_i_1_n_0 ;
  wire \bit_index_reg[12]_i_1_n_1 ;
  wire \bit_index_reg[12]_i_1_n_2 ;
  wire \bit_index_reg[12]_i_1_n_3 ;
  wire \bit_index_reg[16]_i_1_n_0 ;
  wire \bit_index_reg[16]_i_1_n_1 ;
  wire \bit_index_reg[16]_i_1_n_2 ;
  wire \bit_index_reg[16]_i_1_n_3 ;
  wire \bit_index_reg[20]_i_1_n_0 ;
  wire \bit_index_reg[20]_i_1_n_1 ;
  wire \bit_index_reg[20]_i_1_n_2 ;
  wire \bit_index_reg[20]_i_1_n_3 ;
  wire \bit_index_reg[24]_i_1_n_0 ;
  wire \bit_index_reg[24]_i_1_n_1 ;
  wire \bit_index_reg[24]_i_1_n_2 ;
  wire \bit_index_reg[24]_i_1_n_3 ;
  wire \bit_index_reg[28]_i_1_n_0 ;
  wire \bit_index_reg[28]_i_1_n_1 ;
  wire \bit_index_reg[28]_i_1_n_2 ;
  wire \bit_index_reg[28]_i_1_n_3 ;
  wire \bit_index_reg[31]_i_3_n_2 ;
  wire \bit_index_reg[31]_i_3_n_3 ;
  wire \bit_index_reg[4]_i_1_n_0 ;
  wire \bit_index_reg[4]_i_1_n_1 ;
  wire \bit_index_reg[4]_i_1_n_2 ;
  wire \bit_index_reg[4]_i_1_n_3 ;
  wire \bit_index_reg[8]_i_1_n_0 ;
  wire \bit_index_reg[8]_i_1_n_1 ;
  wire \bit_index_reg[8]_i_1_n_2 ;
  wire \bit_index_reg[8]_i_1_n_3 ;
  wire \bit_index_reg_n_0_[0] ;
  wire \bit_index_reg_n_0_[1] ;
  wire \bit_index_reg_n_0_[2] ;
  wire \bit_index_reg_n_0_[3] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire count;
  wire \count[0]_i_10_n_0 ;
  wire \count[0]_i_11_n_0 ;
  wire \count[0]_i_12_n_0 ;
  wire \count[0]_i_13_n_0 ;
  wire \count[0]_i_15_n_0 ;
  wire \count[0]_i_16_n_0 ;
  wire \count[0]_i_17_n_0 ;
  wire \count[0]_i_18_n_0 ;
  wire \count[0]_i_19_n_0 ;
  wire \count[0]_i_20_n_0 ;
  wire \count[0]_i_21_n_0 ;
  wire \count[0]_i_22_n_0 ;
  wire \count[0]_i_24_n_0 ;
  wire \count[0]_i_25_n_0 ;
  wire \count[0]_i_26_n_0 ;
  wire \count[0]_i_27_n_0 ;
  wire \count[0]_i_28_n_0 ;
  wire \count[0]_i_29_n_0 ;
  wire \count[0]_i_30_n_0 ;
  wire \count[0]_i_31_n_0 ;
  wire \count[0]_i_32_n_0 ;
  wire \count[0]_i_33_n_0 ;
  wire \count[0]_i_34_n_0 ;
  wire \count[0]_i_35_n_0 ;
  wire \count[0]_i_36_n_0 ;
  wire \count[0]_i_37_n_0 ;
  wire \count[0]_i_38_n_0 ;
  wire \count[0]_i_39_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire \count[0]_i_9_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_14_n_0 ;
  wire \count_reg[0]_i_14_n_1 ;
  wire \count_reg[0]_i_14_n_2 ;
  wire \count_reg[0]_i_14_n_3 ;
  wire \count_reg[0]_i_23_n_0 ;
  wire \count_reg[0]_i_23_n_1 ;
  wire \count_reg[0]_i_23_n_2 ;
  wire \count_reg[0]_i_23_n_3 ;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_5_n_0 ;
  wire \count_reg[0]_i_5_n_1 ;
  wire \count_reg[0]_i_5_n_2 ;
  wire \count_reg[0]_i_5_n_3 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire rcount;
  wire [31:1]rcount0;
  wire \rcount[0]_i_1_n_0 ;
  wire \rcount[31]_i_1_n_0 ;
  wire \rcount_reg[12]_i_1_n_0 ;
  wire \rcount_reg[12]_i_1_n_1 ;
  wire \rcount_reg[12]_i_1_n_2 ;
  wire \rcount_reg[12]_i_1_n_3 ;
  wire \rcount_reg[16]_i_1_n_0 ;
  wire \rcount_reg[16]_i_1_n_1 ;
  wire \rcount_reg[16]_i_1_n_2 ;
  wire \rcount_reg[16]_i_1_n_3 ;
  wire \rcount_reg[20]_i_1_n_0 ;
  wire \rcount_reg[20]_i_1_n_1 ;
  wire \rcount_reg[20]_i_1_n_2 ;
  wire \rcount_reg[20]_i_1_n_3 ;
  wire \rcount_reg[24]_i_1_n_0 ;
  wire \rcount_reg[24]_i_1_n_1 ;
  wire \rcount_reg[24]_i_1_n_2 ;
  wire \rcount_reg[24]_i_1_n_3 ;
  wire \rcount_reg[28]_i_1_n_0 ;
  wire \rcount_reg[28]_i_1_n_1 ;
  wire \rcount_reg[28]_i_1_n_2 ;
  wire \rcount_reg[28]_i_1_n_3 ;
  wire \rcount_reg[31]_i_3_n_2 ;
  wire \rcount_reg[31]_i_3_n_3 ;
  wire \rcount_reg[4]_i_1_n_0 ;
  wire \rcount_reg[4]_i_1_n_1 ;
  wire \rcount_reg[4]_i_1_n_2 ;
  wire \rcount_reg[4]_i_1_n_3 ;
  wire \rcount_reg[8]_i_1_n_0 ;
  wire \rcount_reg[8]_i_1_n_1 ;
  wire \rcount_reg[8]_i_1_n_2 ;
  wire \rcount_reg[8]_i_1_n_3 ;
  wire \rcount_reg_n_0_[0] ;
  wire \rcount_reg_n_0_[10] ;
  wire \rcount_reg_n_0_[11] ;
  wire \rcount_reg_n_0_[12] ;
  wire \rcount_reg_n_0_[13] ;
  wire \rcount_reg_n_0_[14] ;
  wire \rcount_reg_n_0_[15] ;
  wire \rcount_reg_n_0_[16] ;
  wire \rcount_reg_n_0_[17] ;
  wire \rcount_reg_n_0_[18] ;
  wire \rcount_reg_n_0_[19] ;
  wire \rcount_reg_n_0_[1] ;
  wire \rcount_reg_n_0_[20] ;
  wire \rcount_reg_n_0_[21] ;
  wire \rcount_reg_n_0_[22] ;
  wire \rcount_reg_n_0_[23] ;
  wire \rcount_reg_n_0_[24] ;
  wire \rcount_reg_n_0_[25] ;
  wire \rcount_reg_n_0_[26] ;
  wire \rcount_reg_n_0_[27] ;
  wire \rcount_reg_n_0_[28] ;
  wire \rcount_reg_n_0_[29] ;
  wire \rcount_reg_n_0_[2] ;
  wire \rcount_reg_n_0_[30] ;
  wire \rcount_reg_n_0_[31] ;
  wire \rcount_reg_n_0_[3] ;
  wire \rcount_reg_n_0_[4] ;
  wire \rcount_reg_n_0_[5] ;
  wire \rcount_reg_n_0_[6] ;
  wire \rcount_reg_n_0_[7] ;
  wire \rcount_reg_n_0_[8] ;
  wire \rcount_reg_n_0_[9] ;
  wire rindex;
  wire [31:1]rindex0;
  wire \rindex[0]_i_1_n_0 ;
  wire \rindex[31]_i_1_n_0 ;
  wire \rindex_reg[12]_i_1_n_0 ;
  wire \rindex_reg[12]_i_1_n_1 ;
  wire \rindex_reg[12]_i_1_n_2 ;
  wire \rindex_reg[12]_i_1_n_3 ;
  wire \rindex_reg[16]_i_1_n_0 ;
  wire \rindex_reg[16]_i_1_n_1 ;
  wire \rindex_reg[16]_i_1_n_2 ;
  wire \rindex_reg[16]_i_1_n_3 ;
  wire \rindex_reg[20]_i_1_n_0 ;
  wire \rindex_reg[20]_i_1_n_1 ;
  wire \rindex_reg[20]_i_1_n_2 ;
  wire \rindex_reg[20]_i_1_n_3 ;
  wire \rindex_reg[24]_i_1_n_0 ;
  wire \rindex_reg[24]_i_1_n_1 ;
  wire \rindex_reg[24]_i_1_n_2 ;
  wire \rindex_reg[24]_i_1_n_3 ;
  wire \rindex_reg[28]_i_1_n_0 ;
  wire \rindex_reg[28]_i_1_n_1 ;
  wire \rindex_reg[28]_i_1_n_2 ;
  wire \rindex_reg[28]_i_1_n_3 ;
  wire \rindex_reg[31]_i_3_n_2 ;
  wire \rindex_reg[31]_i_3_n_3 ;
  wire \rindex_reg[4]_i_1_n_0 ;
  wire \rindex_reg[4]_i_1_n_1 ;
  wire \rindex_reg[4]_i_1_n_2 ;
  wire \rindex_reg[4]_i_1_n_3 ;
  wire \rindex_reg[8]_i_1_n_0 ;
  wire \rindex_reg[8]_i_1_n_1 ;
  wire \rindex_reg[8]_i_1_n_2 ;
  wire \rindex_reg[8]_i_1_n_3 ;
  wire \rindex_reg_n_0_[0] ;
  wire \rindex_reg_n_0_[10] ;
  wire \rindex_reg_n_0_[11] ;
  wire \rindex_reg_n_0_[12] ;
  wire \rindex_reg_n_0_[13] ;
  wire \rindex_reg_n_0_[14] ;
  wire \rindex_reg_n_0_[15] ;
  wire \rindex_reg_n_0_[16] ;
  wire \rindex_reg_n_0_[17] ;
  wire \rindex_reg_n_0_[18] ;
  wire \rindex_reg_n_0_[19] ;
  wire \rindex_reg_n_0_[1] ;
  wire \rindex_reg_n_0_[20] ;
  wire \rindex_reg_n_0_[21] ;
  wire \rindex_reg_n_0_[22] ;
  wire \rindex_reg_n_0_[23] ;
  wire \rindex_reg_n_0_[24] ;
  wire \rindex_reg_n_0_[25] ;
  wire \rindex_reg_n_0_[26] ;
  wire \rindex_reg_n_0_[27] ;
  wire \rindex_reg_n_0_[28] ;
  wire \rindex_reg_n_0_[29] ;
  wire \rindex_reg_n_0_[2] ;
  wire \rindex_reg_n_0_[30] ;
  wire \rindex_reg_n_0_[31] ;
  wire \rindex_reg_n_0_[3] ;
  wire \rindex_reg_n_0_[4] ;
  wire \rindex_reg_n_0_[5] ;
  wire \rindex_reg_n_0_[6] ;
  wire \rindex_reg_n_0_[7] ;
  wire \rindex_reg_n_0_[8] ;
  wire \rindex_reg_n_0_[9] ;
  (* RTL_KEEP = "yes" *) wire [1:0]rstate;
  wire rx;
  wire rx_IBUF;
  wire rx_done;
  wire rx_done0;
  wire rx_done_OBUF;
  wire rx_done_OBUF_inst_i_10_n_0;
  wire rx_done_OBUF_inst_i_11_n_0;
  wire rx_done_OBUF_inst_i_12_n_0;
  wire rx_done_OBUF_inst_i_13_n_0;
  wire rx_done_OBUF_inst_i_14_n_0;
  wire rx_done_OBUF_inst_i_15_n_0;
  wire rx_done_OBUF_inst_i_2_n_2;
  wire rx_done_OBUF_inst_i_2_n_3;
  wire rx_done_OBUF_inst_i_3_n_0;
  wire rx_done_OBUF_inst_i_3_n_1;
  wire rx_done_OBUF_inst_i_3_n_2;
  wire rx_done_OBUF_inst_i_3_n_3;
  wire rx_done_OBUF_inst_i_4_n_0;
  wire rx_done_OBUF_inst_i_5_n_0;
  wire rx_done_OBUF_inst_i_6_n_0;
  wire rx_done_OBUF_inst_i_7_n_0;
  wire rx_done_OBUF_inst_i_7_n_1;
  wire rx_done_OBUF_inst_i_7_n_2;
  wire rx_done_OBUF_inst_i_7_n_3;
  wire rx_done_OBUF_inst_i_8_n_0;
  wire rx_done_OBUF_inst_i_9_n_0;
  wire [7:0]rx_output;
  wire [7:0]rx_output_OBUF;
  wire rxdata;
  wire \rxdata[9]_i_1_n_0 ;
  wire \rxdata_reg_n_0_[9] ;
  wire start;
  wire start_IBUF;
  wire tx;
  wire tx_OBUF;
  wire [9:9]tx_data0_in;
  wire \tx_data[8]_i_1_n_0 ;
  wire \tx_data_reg_n_0_[1] ;
  wire \tx_data_reg_n_0_[2] ;
  wire \tx_data_reg_n_0_[3] ;
  wire \tx_data_reg_n_0_[4] ;
  wire \tx_data_reg_n_0_[5] ;
  wire \tx_data_reg_n_0_[6] ;
  wire \tx_data_reg_n_0_[7] ;
  wire \tx_data_reg_n_0_[8] ;
  wire \tx_data_reg_n_0_[9] ;
  wire tx_done;
  wire tx_done0;
  wire tx_done_OBUF;
  wire tx_done_OBUF_inst_i_10_n_0;
  wire tx_done_OBUF_inst_i_11_n_0;
  wire tx_done_OBUF_inst_i_12_n_0;
  wire tx_done_OBUF_inst_i_13_n_0;
  wire tx_done_OBUF_inst_i_14_n_0;
  wire tx_done_OBUF_inst_i_15_n_0;
  wire tx_done_OBUF_inst_i_2_n_2;
  wire tx_done_OBUF_inst_i_2_n_3;
  wire tx_done_OBUF_inst_i_3_n_0;
  wire tx_done_OBUF_inst_i_3_n_1;
  wire tx_done_OBUF_inst_i_3_n_2;
  wire tx_done_OBUF_inst_i_3_n_3;
  wire tx_done_OBUF_inst_i_4_n_0;
  wire tx_done_OBUF_inst_i_5_n_0;
  wire tx_done_OBUF_inst_i_6_n_0;
  wire tx_done_OBUF_inst_i_7_n_0;
  wire tx_done_OBUF_inst_i_7_n_1;
  wire tx_done_OBUF_inst_i_7_n_2;
  wire tx_done_OBUF_inst_i_7_n_3;
  wire tx_done_OBUF_inst_i_8_n_0;
  wire tx_done_OBUF_inst_i_9_n_0;
  wire tx_i_1_n_0;
  wire tx_i_2_n_0;
  wire tx_i_3_n_0;
  wire tx_i_4_n_0;
  wire tx_i_5_n_0;
  wire [7:0]tx_in;
  wire [7:0]tx_in_IBUF;
  wire [3:0]\NLW_FSM_onehot_state_reg[2]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[2]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_rstate_reg[1]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_rstate_reg[1]_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_rstate_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_rstate_reg[1]_i_24_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_rstate_reg[1]_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_rstate_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_rstate_reg[1]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_rstate_reg[1]_i_9_O_UNCONNECTED ;
  wire [3:2]\NLW_bit_index_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_bit_index_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_rcount_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_rcount_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_rindex_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_rindex_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]NLW_rx_done_OBUF_inst_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_rx_done_OBUF_inst_i_2_O_UNCONNECTED;
  wire [3:0]NLW_rx_done_OBUF_inst_i_3_O_UNCONNECTED;
  wire [3:0]NLW_rx_done_OBUF_inst_i_7_O_UNCONNECTED;
  wire [3:3]NLW_tx_done_OBUF_inst_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_tx_done_OBUF_inst_i_2_O_UNCONNECTED;
  wire [3:0]NLW_tx_done_OBUF_inst_i_3_O_UNCONNECTED;
  wire [3:0]NLW_tx_done_OBUF_inst_i_7_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h4F44FFFF4F440000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(start_IBUF),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_IBUF),
        .I2(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBAA)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(bit_done_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0455FFFF0000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(bit_done_reg_n_0),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_10 
       (.I0(bit_index[21]),
        .I1(bit_index[20]),
        .O(\FSM_onehot_state[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_11 
       (.I0(bit_index[19]),
        .I1(bit_index[18]),
        .O(\FSM_onehot_state[2]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_12 
       (.I0(bit_index[17]),
        .I1(bit_index[16]),
        .O(\FSM_onehot_state[2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_14 
       (.I0(bit_index[15]),
        .I1(bit_index[14]),
        .O(\FSM_onehot_state[2]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_15 
       (.I0(bit_index[13]),
        .I1(bit_index[12]),
        .O(\FSM_onehot_state[2]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_16 
       (.I0(bit_index[11]),
        .I1(bit_index[10]),
        .O(\FSM_onehot_state[2]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_17 
       (.I0(bit_index[9]),
        .I1(bit_index[8]),
        .O(\FSM_onehot_state[2]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_18 
       (.I0(\bit_index_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_19 
       (.I0(\bit_index_reg_n_0_[1] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_20 
       (.I0(bit_index[7]),
        .I1(bit_index[6]),
        .O(\FSM_onehot_state[2]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_21 
       (.I0(bit_index[5]),
        .I1(bit_index[4]),
        .O(\FSM_onehot_state[2]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_22 
       (.I0(\bit_index_reg_n_0_[3] ),
        .I1(\bit_index_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_23 
       (.I0(\bit_index_reg_n_0_[0] ),
        .I1(\bit_index_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(bit_index[31]),
        .I1(bit_index[30]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(bit_index[29]),
        .I1(bit_index[28]),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_6 
       (.I0(bit_index[27]),
        .I1(bit_index[26]),
        .O(\FSM_onehot_state[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_7 
       (.I0(bit_index[25]),
        .I1(bit_index[24]),
        .O(\FSM_onehot_state[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[2]_i_9 
       (.I0(bit_index[23]),
        .I1(bit_index[22]),
        .O(\FSM_onehot_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "check:100,idle:001,send:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "check:100,idle:001,send:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "check:100,idle:001,send:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 \FSM_onehot_state_reg[2]_i_13 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[2]_i_13_n_0 ,\FSM_onehot_state_reg[2]_i_13_n_1 ,\FSM_onehot_state_reg[2]_i_13_n_2 ,\FSM_onehot_state_reg[2]_i_13_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,\FSM_onehot_state[2]_i_18_n_0 ,\FSM_onehot_state[2]_i_19_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[2]_i_13_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[2]_i_20_n_0 ,\FSM_onehot_state[2]_i_21_n_0 ,\FSM_onehot_state[2]_i_22_n_0 ,\FSM_onehot_state[2]_i_23_n_0 }));
  CARRY4 \FSM_onehot_state_reg[2]_i_2 
       (.CI(\FSM_onehot_state_reg[2]_i_3_n_0 ),
        .CO({\FSM_onehot_state_reg[2]_i_2_n_0 ,\FSM_onehot_state_reg[2]_i_2_n_1 ,\FSM_onehot_state_reg[2]_i_2_n_2 ,\FSM_onehot_state_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({bit_index[31],1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[2]_i_4_n_0 ,\FSM_onehot_state[2]_i_5_n_0 ,\FSM_onehot_state[2]_i_6_n_0 ,\FSM_onehot_state[2]_i_7_n_0 }));
  CARRY4 \FSM_onehot_state_reg[2]_i_3 
       (.CI(\FSM_onehot_state_reg[2]_i_8_n_0 ),
        .CO({\FSM_onehot_state_reg[2]_i_3_n_0 ,\FSM_onehot_state_reg[2]_i_3_n_1 ,\FSM_onehot_state_reg[2]_i_3_n_2 ,\FSM_onehot_state_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[2]_i_9_n_0 ,\FSM_onehot_state[2]_i_10_n_0 ,\FSM_onehot_state[2]_i_11_n_0 ,\FSM_onehot_state[2]_i_12_n_0 }));
  CARRY4 \FSM_onehot_state_reg[2]_i_8 
       (.CI(\FSM_onehot_state_reg[2]_i_13_n_0 ),
        .CO({\FSM_onehot_state_reg[2]_i_8_n_0 ,\FSM_onehot_state_reg[2]_i_8_n_1 ,\FSM_onehot_state_reg[2]_i_8_n_2 ,\FSM_onehot_state_reg[2]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_state_reg[2]_i_8_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[2]_i_14_n_0 ,\FSM_onehot_state[2]_i_15_n_0 ,\FSM_onehot_state[2]_i_16_n_0 ,\FSM_onehot_state[2]_i_17_n_0 }));
  LUT6 #(
    .INIT(64'hEEAAEEEA22AA222A)) 
    \FSM_sequential_rstate[0]_i_1 
       (.I0(\FSM_sequential_rstate[0]_i_2_n_0 ),
        .I1(rstate[1]),
        .I2(\FSM_sequential_rstate_reg[1]_i_3_n_0 ),
        .I3(rstate[0]),
        .I4(bit_done_reg_n_0),
        .I5(rstate[0]),
        .O(\FSM_sequential_rstate[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AAF0330033)) 
    \FSM_sequential_rstate[0]_i_2 
       (.I0(\FSM_sequential_rstate_reg[1]_i_2_n_0 ),
        .I1(rx_IBUF),
        .I2(bit_done_reg_n_0),
        .I3(rstate[1]),
        .I4(\FSM_sequential_rstate_reg[1]_i_3_n_0 ),
        .I5(rstate[0]),
        .O(\FSM_sequential_rstate[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD00DDC011001100)) 
    \FSM_sequential_rstate[1]_i_1 
       (.I0(\FSM_sequential_rstate_reg[1]_i_2_n_0 ),
        .I1(rstate[1]),
        .I2(\FSM_sequential_rstate_reg[1]_i_3_n_0 ),
        .I3(rstate[0]),
        .I4(bit_done_reg_n_0),
        .I5(rstate[1]),
        .O(\FSM_sequential_rstate[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_10 
       (.I0(\rindex_reg_n_0_[31] ),
        .I1(\rindex_reg_n_0_[30] ),
        .O(\FSM_sequential_rstate[1]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_11 
       (.I0(\rindex_reg_n_0_[29] ),
        .I1(\rindex_reg_n_0_[28] ),
        .O(\FSM_sequential_rstate[1]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_12 
       (.I0(\rindex_reg_n_0_[27] ),
        .I1(\rindex_reg_n_0_[26] ),
        .O(\FSM_sequential_rstate[1]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_13 
       (.I0(\rindex_reg_n_0_[25] ),
        .I1(\rindex_reg_n_0_[24] ),
        .O(\FSM_sequential_rstate[1]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_15 
       (.I0(\rcount_reg_n_0_[23] ),
        .I1(\rcount_reg_n_0_[22] ),
        .O(\FSM_sequential_rstate[1]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_16 
       (.I0(\rcount_reg_n_0_[21] ),
        .I1(\rcount_reg_n_0_[20] ),
        .O(\FSM_sequential_rstate[1]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_17 
       (.I0(\rcount_reg_n_0_[19] ),
        .I1(\rcount_reg_n_0_[18] ),
        .O(\FSM_sequential_rstate[1]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_18 
       (.I0(\rcount_reg_n_0_[17] ),
        .I1(\rcount_reg_n_0_[16] ),
        .O(\FSM_sequential_rstate[1]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_20 
       (.I0(\rindex_reg_n_0_[23] ),
        .I1(\rindex_reg_n_0_[22] ),
        .O(\FSM_sequential_rstate[1]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_21 
       (.I0(\rindex_reg_n_0_[21] ),
        .I1(\rindex_reg_n_0_[20] ),
        .O(\FSM_sequential_rstate[1]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_22 
       (.I0(\rindex_reg_n_0_[19] ),
        .I1(\rindex_reg_n_0_[18] ),
        .O(\FSM_sequential_rstate[1]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_23 
       (.I0(\rindex_reg_n_0_[17] ),
        .I1(\rindex_reg_n_0_[16] ),
        .O(\FSM_sequential_rstate[1]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_25 
       (.I0(\rcount_reg_n_0_[15] ),
        .I1(\rcount_reg_n_0_[14] ),
        .O(\FSM_sequential_rstate[1]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_26 
       (.I0(\rcount_reg_n_0_[13] ),
        .I1(\rcount_reg_n_0_[12] ),
        .O(\FSM_sequential_rstate[1]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_27 
       (.I0(\rcount_reg_n_0_[11] ),
        .I1(\rcount_reg_n_0_[10] ),
        .O(\FSM_sequential_rstate[1]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_28 
       (.I0(\rcount_reg_n_0_[9] ),
        .I1(\rcount_reg_n_0_[8] ),
        .O(\FSM_sequential_rstate[1]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_30 
       (.I0(\rindex_reg_n_0_[15] ),
        .I1(\rindex_reg_n_0_[14] ),
        .O(\FSM_sequential_rstate[1]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_31 
       (.I0(\rindex_reg_n_0_[13] ),
        .I1(\rindex_reg_n_0_[12] ),
        .O(\FSM_sequential_rstate[1]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_32 
       (.I0(\rindex_reg_n_0_[11] ),
        .I1(\rindex_reg_n_0_[10] ),
        .O(\FSM_sequential_rstate[1]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_33 
       (.I0(\rindex_reg_n_0_[9] ),
        .I1(\rindex_reg_n_0_[8] ),
        .O(\FSM_sequential_rstate[1]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_34 
       (.I0(\rcount_reg_n_0_[3] ),
        .I1(\rcount_reg_n_0_[2] ),
        .O(\FSM_sequential_rstate[1]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_35 
       (.I0(\rcount_reg_n_0_[1] ),
        .I1(\rcount_reg_n_0_[0] ),
        .O(\FSM_sequential_rstate[1]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_36 
       (.I0(\rcount_reg_n_0_[7] ),
        .I1(\rcount_reg_n_0_[6] ),
        .O(\FSM_sequential_rstate[1]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_37 
       (.I0(\rcount_reg_n_0_[5] ),
        .I1(\rcount_reg_n_0_[4] ),
        .O(\FSM_sequential_rstate[1]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rstate[1]_i_38 
       (.I0(\rcount_reg_n_0_[2] ),
        .I1(\rcount_reg_n_0_[3] ),
        .O(\FSM_sequential_rstate[1]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rstate[1]_i_39 
       (.I0(\rcount_reg_n_0_[0] ),
        .I1(\rcount_reg_n_0_[1] ),
        .O(\FSM_sequential_rstate[1]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_rstate[1]_i_40 
       (.I0(\rindex_reg_n_0_[3] ),
        .O(\FSM_sequential_rstate[1]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_41 
       (.I0(\rindex_reg_n_0_[1] ),
        .I1(\rindex_reg_n_0_[0] ),
        .O(\FSM_sequential_rstate[1]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_42 
       (.I0(\rindex_reg_n_0_[7] ),
        .I1(\rindex_reg_n_0_[6] ),
        .O(\FSM_sequential_rstate[1]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_43 
       (.I0(\rindex_reg_n_0_[5] ),
        .I1(\rindex_reg_n_0_[4] ),
        .O(\FSM_sequential_rstate[1]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rstate[1]_i_44 
       (.I0(\rindex_reg_n_0_[3] ),
        .I1(\rindex_reg_n_0_[2] ),
        .O(\FSM_sequential_rstate[1]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_rstate[1]_i_45 
       (.I0(\rindex_reg_n_0_[0] ),
        .I1(\rindex_reg_n_0_[1] ),
        .O(\FSM_sequential_rstate[1]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_5 
       (.I0(\rcount_reg_n_0_[31] ),
        .I1(\rcount_reg_n_0_[30] ),
        .O(\FSM_sequential_rstate[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_6 
       (.I0(\rcount_reg_n_0_[29] ),
        .I1(\rcount_reg_n_0_[28] ),
        .O(\FSM_sequential_rstate[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_7 
       (.I0(\rcount_reg_n_0_[27] ),
        .I1(\rcount_reg_n_0_[26] ),
        .O(\FSM_sequential_rstate[1]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rstate[1]_i_8 
       (.I0(\rcount_reg_n_0_[25] ),
        .I1(\rcount_reg_n_0_[24] ),
        .O(\FSM_sequential_rstate[1]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "recv:10,ridle:00,rwait:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rstate_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_rstate[0]_i_1_n_0 ),
        .Q(rstate[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "recv:10,ridle:00,rwait:01" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rstate_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_rstate[1]_i_1_n_0 ),
        .Q(rstate[1]),
        .R(1'b0));
  CARRY4 \FSM_sequential_rstate_reg[1]_i_14 
       (.CI(\FSM_sequential_rstate_reg[1]_i_24_n_0 ),
        .CO({\FSM_sequential_rstate_reg[1]_i_14_n_0 ,\FSM_sequential_rstate_reg[1]_i_14_n_1 ,\FSM_sequential_rstate_reg[1]_i_14_n_2 ,\FSM_sequential_rstate_reg[1]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_rstate_reg[1]_i_14_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_rstate[1]_i_25_n_0 ,\FSM_sequential_rstate[1]_i_26_n_0 ,\FSM_sequential_rstate[1]_i_27_n_0 ,\FSM_sequential_rstate[1]_i_28_n_0 }));
  CARRY4 \FSM_sequential_rstate_reg[1]_i_19 
       (.CI(\FSM_sequential_rstate_reg[1]_i_29_n_0 ),
        .CO({\FSM_sequential_rstate_reg[1]_i_19_n_0 ,\FSM_sequential_rstate_reg[1]_i_19_n_1 ,\FSM_sequential_rstate_reg[1]_i_19_n_2 ,\FSM_sequential_rstate_reg[1]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_rstate_reg[1]_i_19_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_rstate[1]_i_30_n_0 ,\FSM_sequential_rstate[1]_i_31_n_0 ,\FSM_sequential_rstate[1]_i_32_n_0 ,\FSM_sequential_rstate[1]_i_33_n_0 }));
  CARRY4 \FSM_sequential_rstate_reg[1]_i_2 
       (.CI(\FSM_sequential_rstate_reg[1]_i_4_n_0 ),
        .CO({\FSM_sequential_rstate_reg[1]_i_2_n_0 ,\FSM_sequential_rstate_reg[1]_i_2_n_1 ,\FSM_sequential_rstate_reg[1]_i_2_n_2 ,\FSM_sequential_rstate_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\rcount_reg_n_0_[31] ,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_rstate_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_rstate[1]_i_5_n_0 ,\FSM_sequential_rstate[1]_i_6_n_0 ,\FSM_sequential_rstate[1]_i_7_n_0 ,\FSM_sequential_rstate[1]_i_8_n_0 }));
  CARRY4 \FSM_sequential_rstate_reg[1]_i_24 
       (.CI(1'b0),
        .CO({\FSM_sequential_rstate_reg[1]_i_24_n_0 ,\FSM_sequential_rstate_reg[1]_i_24_n_1 ,\FSM_sequential_rstate_reg[1]_i_24_n_2 ,\FSM_sequential_rstate_reg[1]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\FSM_sequential_rstate[1]_i_34_n_0 ,\FSM_sequential_rstate[1]_i_35_n_0 }),
        .O(\NLW_FSM_sequential_rstate_reg[1]_i_24_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_rstate[1]_i_36_n_0 ,\FSM_sequential_rstate[1]_i_37_n_0 ,\FSM_sequential_rstate[1]_i_38_n_0 ,\FSM_sequential_rstate[1]_i_39_n_0 }));
  CARRY4 \FSM_sequential_rstate_reg[1]_i_29 
       (.CI(1'b0),
        .CO({\FSM_sequential_rstate_reg[1]_i_29_n_0 ,\FSM_sequential_rstate_reg[1]_i_29_n_1 ,\FSM_sequential_rstate_reg[1]_i_29_n_2 ,\FSM_sequential_rstate_reg[1]_i_29_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,\FSM_sequential_rstate[1]_i_40_n_0 ,\FSM_sequential_rstate[1]_i_41_n_0 }),
        .O(\NLW_FSM_sequential_rstate_reg[1]_i_29_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_rstate[1]_i_42_n_0 ,\FSM_sequential_rstate[1]_i_43_n_0 ,\FSM_sequential_rstate[1]_i_44_n_0 ,\FSM_sequential_rstate[1]_i_45_n_0 }));
  CARRY4 \FSM_sequential_rstate_reg[1]_i_3 
       (.CI(\FSM_sequential_rstate_reg[1]_i_9_n_0 ),
        .CO({\FSM_sequential_rstate_reg[1]_i_3_n_0 ,\FSM_sequential_rstate_reg[1]_i_3_n_1 ,\FSM_sequential_rstate_reg[1]_i_3_n_2 ,\FSM_sequential_rstate_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\rindex_reg_n_0_[31] ,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_rstate_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_rstate[1]_i_10_n_0 ,\FSM_sequential_rstate[1]_i_11_n_0 ,\FSM_sequential_rstate[1]_i_12_n_0 ,\FSM_sequential_rstate[1]_i_13_n_0 }));
  CARRY4 \FSM_sequential_rstate_reg[1]_i_4 
       (.CI(\FSM_sequential_rstate_reg[1]_i_14_n_0 ),
        .CO({\FSM_sequential_rstate_reg[1]_i_4_n_0 ,\FSM_sequential_rstate_reg[1]_i_4_n_1 ,\FSM_sequential_rstate_reg[1]_i_4_n_2 ,\FSM_sequential_rstate_reg[1]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_rstate_reg[1]_i_4_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_rstate[1]_i_15_n_0 ,\FSM_sequential_rstate[1]_i_16_n_0 ,\FSM_sequential_rstate[1]_i_17_n_0 ,\FSM_sequential_rstate[1]_i_18_n_0 }));
  CARRY4 \FSM_sequential_rstate_reg[1]_i_9 
       (.CI(\FSM_sequential_rstate_reg[1]_i_19_n_0 ),
        .CO({\FSM_sequential_rstate_reg[1]_i_9_n_0 ,\FSM_sequential_rstate_reg[1]_i_9_n_1 ,\FSM_sequential_rstate_reg[1]_i_9_n_2 ,\FSM_sequential_rstate_reg[1]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_sequential_rstate_reg[1]_i_9_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_rstate[1]_i_20_n_0 ,\FSM_sequential_rstate[1]_i_21_n_0 ,\FSM_sequential_rstate[1]_i_22_n_0 ,\FSM_sequential_rstate[1]_i_23_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    bit_done_i_1
       (.I0(bit_done_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\count_reg[0]_i_3_n_0 ),
        .O(bit_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bit_done_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(bit_done_i_1_n_0),
        .Q(bit_done_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_index[0]_i_1 
       (.I0(\bit_index_reg_n_0_[0] ),
        .O(\bit_index[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    \bit_index[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\bit_index[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF8A)) 
    \bit_index[31]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bit_done_reg_n_0),
        .I2(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_index[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(\bit_index[0]_i_1_n_0 ),
        .Q(\bit_index_reg_n_0_[0] ),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[10]),
        .Q(bit_index[10]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[11]),
        .Q(bit_index[11]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[12]),
        .Q(bit_index[12]),
        .R(\bit_index[31]_i_1_n_0 ));
  CARRY4 \bit_index_reg[12]_i_1 
       (.CI(\bit_index_reg[8]_i_1_n_0 ),
        .CO({\bit_index_reg[12]_i_1_n_0 ,\bit_index_reg[12]_i_1_n_1 ,\bit_index_reg[12]_i_1_n_2 ,\bit_index_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_index0[12:9]),
        .S(bit_index[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[13]),
        .Q(bit_index[13]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[14]),
        .Q(bit_index[14]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[15]),
        .Q(bit_index[15]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[16]),
        .Q(bit_index[16]),
        .R(\bit_index[31]_i_1_n_0 ));
  CARRY4 \bit_index_reg[16]_i_1 
       (.CI(\bit_index_reg[12]_i_1_n_0 ),
        .CO({\bit_index_reg[16]_i_1_n_0 ,\bit_index_reg[16]_i_1_n_1 ,\bit_index_reg[16]_i_1_n_2 ,\bit_index_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_index0[16:13]),
        .S(bit_index[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[17]),
        .Q(bit_index[17]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[18]),
        .Q(bit_index[18]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[19]),
        .Q(bit_index[19]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[1]),
        .Q(\bit_index_reg_n_0_[1] ),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[20]),
        .Q(bit_index[20]),
        .R(\bit_index[31]_i_1_n_0 ));
  CARRY4 \bit_index_reg[20]_i_1 
       (.CI(\bit_index_reg[16]_i_1_n_0 ),
        .CO({\bit_index_reg[20]_i_1_n_0 ,\bit_index_reg[20]_i_1_n_1 ,\bit_index_reg[20]_i_1_n_2 ,\bit_index_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_index0[20:17]),
        .S(bit_index[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[21]),
        .Q(bit_index[21]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[22]),
        .Q(bit_index[22]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[23]),
        .Q(bit_index[23]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[24]),
        .Q(bit_index[24]),
        .R(\bit_index[31]_i_1_n_0 ));
  CARRY4 \bit_index_reg[24]_i_1 
       (.CI(\bit_index_reg[20]_i_1_n_0 ),
        .CO({\bit_index_reg[24]_i_1_n_0 ,\bit_index_reg[24]_i_1_n_1 ,\bit_index_reg[24]_i_1_n_2 ,\bit_index_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_index0[24:21]),
        .S(bit_index[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[25]),
        .Q(bit_index[25]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[26]),
        .Q(bit_index[26]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[27]),
        .Q(bit_index[27]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[28]),
        .Q(bit_index[28]),
        .R(\bit_index[31]_i_1_n_0 ));
  CARRY4 \bit_index_reg[28]_i_1 
       (.CI(\bit_index_reg[24]_i_1_n_0 ),
        .CO({\bit_index_reg[28]_i_1_n_0 ,\bit_index_reg[28]_i_1_n_1 ,\bit_index_reg[28]_i_1_n_2 ,\bit_index_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_index0[28:25]),
        .S(bit_index[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[29]),
        .Q(bit_index[29]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[2]),
        .Q(\bit_index_reg_n_0_[2] ),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[30]),
        .Q(bit_index[30]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[31]),
        .Q(bit_index[31]),
        .R(\bit_index[31]_i_1_n_0 ));
  CARRY4 \bit_index_reg[31]_i_3 
       (.CI(\bit_index_reg[28]_i_1_n_0 ),
        .CO({\NLW_bit_index_reg[31]_i_3_CO_UNCONNECTED [3:2],\bit_index_reg[31]_i_3_n_2 ,\bit_index_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bit_index_reg[31]_i_3_O_UNCONNECTED [3],bit_index0[31:29]}),
        .S({1'b0,bit_index[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[3]),
        .Q(\bit_index_reg_n_0_[3] ),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[4]),
        .Q(bit_index[4]),
        .R(\bit_index[31]_i_1_n_0 ));
  CARRY4 \bit_index_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\bit_index_reg[4]_i_1_n_0 ,\bit_index_reg[4]_i_1_n_1 ,\bit_index_reg[4]_i_1_n_2 ,\bit_index_reg[4]_i_1_n_3 }),
        .CYINIT(\bit_index_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_index0[4:1]),
        .S({bit_index[4],\bit_index_reg_n_0_[3] ,\bit_index_reg_n_0_[2] ,\bit_index_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[5]),
        .Q(bit_index[5]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[6]),
        .Q(bit_index[6]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[7]),
        .Q(bit_index[7]),
        .R(\bit_index[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[8]),
        .Q(bit_index[8]),
        .R(\bit_index[31]_i_1_n_0 ));
  CARRY4 \bit_index_reg[8]_i_1 
       (.CI(\bit_index_reg[4]_i_1_n_0 ),
        .CO({\bit_index_reg[8]_i_1_n_0 ,\bit_index_reg[8]_i_1_n_1 ,\bit_index_reg[8]_i_1_n_2 ,\bit_index_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bit_index0[8:5]),
        .S(bit_index[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index[31]_i_2_n_0 ),
        .D(bit_index0[9]),
        .Q(bit_index[9]),
        .R(\bit_index[31]_i_1_n_0 ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\count_reg[0]_i_3_n_0 ),
        .O(count));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_10 
       (.I0(count_reg[31]),
        .I1(count_reg[30]),
        .O(\count[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_11 
       (.I0(count_reg[29]),
        .I1(count_reg[28]),
        .O(\count[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_12 
       (.I0(count_reg[27]),
        .I1(count_reg[26]),
        .O(\count[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_13 
       (.I0(count_reg[25]),
        .I1(count_reg[24]),
        .O(\count[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_15 
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .O(\count[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_16 
       (.I0(count_reg[20]),
        .I1(count_reg[21]),
        .O(\count[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_17 
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .O(\count[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_18 
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .O(\count[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_19 
       (.I0(count_reg[23]),
        .I1(count_reg[22]),
        .O(\count[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_20 
       (.I0(count_reg[21]),
        .I1(count_reg[20]),
        .O(\count[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_21 
       (.I0(count_reg[19]),
        .I1(count_reg[18]),
        .O(\count[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_22 
       (.I0(count_reg[17]),
        .I1(count_reg[16]),
        .O(\count[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_24 
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(\count[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_25 
       (.I0(count_reg[12]),
        .I1(count_reg[13]),
        .O(\count[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_26 
       (.I0(count_reg[10]),
        .I1(count_reg[11]),
        .O(\count[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_27 
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .O(\count[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_28 
       (.I0(count_reg[15]),
        .I1(count_reg[14]),
        .O(\count[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_29 
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .O(\count[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_30 
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .O(\count[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_31 
       (.I0(count_reg[9]),
        .I1(count_reg[8]),
        .O(\count[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_32 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .O(\count[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_33 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(\count[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_34 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .O(\count[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_35 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\count[0]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_36 
       (.I0(count_reg[7]),
        .I1(count_reg[6]),
        .O(\count[0]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[0]_i_37 
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .O(\count[0]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_38 
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .O(\count[0]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_39 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(\count[0]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_4 
       (.I0(count_reg[0]),
        .O(\count[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_6 
       (.I0(count_reg[30]),
        .I1(count_reg[31]),
        .O(\count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_7 
       (.I0(count_reg[28]),
        .I1(count_reg[29]),
        .O(\count[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_8 
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .O(\count[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[0]_i_9 
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .O(\count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(count));
  CARRY4 \count_reg[0]_i_14 
       (.CI(\count_reg[0]_i_23_n_0 ),
        .CO({\count_reg[0]_i_14_n_0 ,\count_reg[0]_i_14_n_1 ,\count_reg[0]_i_14_n_2 ,\count_reg[0]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[0]_i_24_n_0 ,\count[0]_i_25_n_0 ,\count[0]_i_26_n_0 ,\count[0]_i_27_n_0 }),
        .O(\NLW_count_reg[0]_i_14_O_UNCONNECTED [3:0]),
        .S({\count[0]_i_28_n_0 ,\count[0]_i_29_n_0 ,\count[0]_i_30_n_0 ,\count[0]_i_31_n_0 }));
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_4_n_0 }));
  CARRY4 \count_reg[0]_i_23 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_23_n_0 ,\count_reg[0]_i_23_n_1 ,\count_reg[0]_i_23_n_2 ,\count_reg[0]_i_23_n_3 }),
        .CYINIT(1'b1),
        .DI({\count[0]_i_32_n_0 ,\count[0]_i_33_n_0 ,\count[0]_i_34_n_0 ,\count[0]_i_35_n_0 }),
        .O(\NLW_count_reg[0]_i_23_O_UNCONNECTED [3:0]),
        .S({\count[0]_i_36_n_0 ,\count[0]_i_37_n_0 ,\count[0]_i_38_n_0 ,\count[0]_i_39_n_0 }));
  CARRY4 \count_reg[0]_i_3 
       (.CI(\count_reg[0]_i_5_n_0 ),
        .CO({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_3_n_1 ,\count_reg[0]_i_3_n_2 ,\count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 ,\count[0]_i_8_n_0 ,\count[0]_i_9_n_0 }),
        .O(\NLW_count_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\count[0]_i_10_n_0 ,\count[0]_i_11_n_0 ,\count[0]_i_12_n_0 ,\count[0]_i_13_n_0 }));
  CARRY4 \count_reg[0]_i_5 
       (.CI(\count_reg[0]_i_14_n_0 ),
        .CO({\count_reg[0]_i_5_n_0 ,\count_reg[0]_i_5_n_1 ,\count_reg[0]_i_5_n_2 ,\count_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\count[0]_i_15_n_0 ,\count[0]_i_16_n_0 ,\count[0]_i_17_n_0 ,\count[0]_i_18_n_0 }),
        .O(\NLW_count_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\count[0]_i_19_n_0 ,\count[0]_i_20_n_0 ,\count[0]_i_21_n_0 ,\count[0]_i_22_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(count));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(count));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(count));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(count));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(count));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(count));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(count));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(count));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(count));
  LUT1 #(
    .INIT(2'h1)) 
    \rcount[0]_i_1 
       (.I0(\rcount_reg_n_0_[0] ),
        .O(\rcount[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \rcount[31]_i_1 
       (.I0(\FSM_sequential_rstate_reg[1]_i_2_n_0 ),
        .I1(rstate[0]),
        .I2(rstate[1]),
        .O(\rcount[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rcount[31]_i_2 
       (.I0(rstate[1]),
        .O(rcount));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(\rcount[0]_i_1_n_0 ),
        .Q(\rcount_reg_n_0_[0] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[10]),
        .Q(\rcount_reg_n_0_[10] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[11]),
        .Q(\rcount_reg_n_0_[11] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[12]),
        .Q(\rcount_reg_n_0_[12] ),
        .R(\rcount[31]_i_1_n_0 ));
  CARRY4 \rcount_reg[12]_i_1 
       (.CI(\rcount_reg[8]_i_1_n_0 ),
        .CO({\rcount_reg[12]_i_1_n_0 ,\rcount_reg[12]_i_1_n_1 ,\rcount_reg[12]_i_1_n_2 ,\rcount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rcount0[12:9]),
        .S({\rcount_reg_n_0_[12] ,\rcount_reg_n_0_[11] ,\rcount_reg_n_0_[10] ,\rcount_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[13]),
        .Q(\rcount_reg_n_0_[13] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[14]),
        .Q(\rcount_reg_n_0_[14] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[15]),
        .Q(\rcount_reg_n_0_[15] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[16]),
        .Q(\rcount_reg_n_0_[16] ),
        .R(\rcount[31]_i_1_n_0 ));
  CARRY4 \rcount_reg[16]_i_1 
       (.CI(\rcount_reg[12]_i_1_n_0 ),
        .CO({\rcount_reg[16]_i_1_n_0 ,\rcount_reg[16]_i_1_n_1 ,\rcount_reg[16]_i_1_n_2 ,\rcount_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rcount0[16:13]),
        .S({\rcount_reg_n_0_[16] ,\rcount_reg_n_0_[15] ,\rcount_reg_n_0_[14] ,\rcount_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[17]),
        .Q(\rcount_reg_n_0_[17] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[18]),
        .Q(\rcount_reg_n_0_[18] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[19]),
        .Q(\rcount_reg_n_0_[19] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[1]),
        .Q(\rcount_reg_n_0_[1] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[20]),
        .Q(\rcount_reg_n_0_[20] ),
        .R(\rcount[31]_i_1_n_0 ));
  CARRY4 \rcount_reg[20]_i_1 
       (.CI(\rcount_reg[16]_i_1_n_0 ),
        .CO({\rcount_reg[20]_i_1_n_0 ,\rcount_reg[20]_i_1_n_1 ,\rcount_reg[20]_i_1_n_2 ,\rcount_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rcount0[20:17]),
        .S({\rcount_reg_n_0_[20] ,\rcount_reg_n_0_[19] ,\rcount_reg_n_0_[18] ,\rcount_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[21]),
        .Q(\rcount_reg_n_0_[21] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[22]),
        .Q(\rcount_reg_n_0_[22] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[23]),
        .Q(\rcount_reg_n_0_[23] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[24]),
        .Q(\rcount_reg_n_0_[24] ),
        .R(\rcount[31]_i_1_n_0 ));
  CARRY4 \rcount_reg[24]_i_1 
       (.CI(\rcount_reg[20]_i_1_n_0 ),
        .CO({\rcount_reg[24]_i_1_n_0 ,\rcount_reg[24]_i_1_n_1 ,\rcount_reg[24]_i_1_n_2 ,\rcount_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rcount0[24:21]),
        .S({\rcount_reg_n_0_[24] ,\rcount_reg_n_0_[23] ,\rcount_reg_n_0_[22] ,\rcount_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[25]),
        .Q(\rcount_reg_n_0_[25] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[26]),
        .Q(\rcount_reg_n_0_[26] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[27]),
        .Q(\rcount_reg_n_0_[27] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[28]),
        .Q(\rcount_reg_n_0_[28] ),
        .R(\rcount[31]_i_1_n_0 ));
  CARRY4 \rcount_reg[28]_i_1 
       (.CI(\rcount_reg[24]_i_1_n_0 ),
        .CO({\rcount_reg[28]_i_1_n_0 ,\rcount_reg[28]_i_1_n_1 ,\rcount_reg[28]_i_1_n_2 ,\rcount_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rcount0[28:25]),
        .S({\rcount_reg_n_0_[28] ,\rcount_reg_n_0_[27] ,\rcount_reg_n_0_[26] ,\rcount_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[29]),
        .Q(\rcount_reg_n_0_[29] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[2]),
        .Q(\rcount_reg_n_0_[2] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[30]),
        .Q(\rcount_reg_n_0_[30] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[31]),
        .Q(\rcount_reg_n_0_[31] ),
        .R(\rcount[31]_i_1_n_0 ));
  CARRY4 \rcount_reg[31]_i_3 
       (.CI(\rcount_reg[28]_i_1_n_0 ),
        .CO({\NLW_rcount_reg[31]_i_3_CO_UNCONNECTED [3:2],\rcount_reg[31]_i_3_n_2 ,\rcount_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rcount_reg[31]_i_3_O_UNCONNECTED [3],rcount0[31:29]}),
        .S({1'b0,\rcount_reg_n_0_[31] ,\rcount_reg_n_0_[30] ,\rcount_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[3]),
        .Q(\rcount_reg_n_0_[3] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[4]),
        .Q(\rcount_reg_n_0_[4] ),
        .R(\rcount[31]_i_1_n_0 ));
  CARRY4 \rcount_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\rcount_reg[4]_i_1_n_0 ,\rcount_reg[4]_i_1_n_1 ,\rcount_reg[4]_i_1_n_2 ,\rcount_reg[4]_i_1_n_3 }),
        .CYINIT(\rcount_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rcount0[4:1]),
        .S({\rcount_reg_n_0_[4] ,\rcount_reg_n_0_[3] ,\rcount_reg_n_0_[2] ,\rcount_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[5]),
        .Q(\rcount_reg_n_0_[5] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[6]),
        .Q(\rcount_reg_n_0_[6] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[7]),
        .Q(\rcount_reg_n_0_[7] ),
        .R(\rcount[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[8]),
        .Q(\rcount_reg_n_0_[8] ),
        .R(\rcount[31]_i_1_n_0 ));
  CARRY4 \rcount_reg[8]_i_1 
       (.CI(\rcount_reg[4]_i_1_n_0 ),
        .CO({\rcount_reg[8]_i_1_n_0 ,\rcount_reg[8]_i_1_n_1 ,\rcount_reg[8]_i_1_n_2 ,\rcount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rcount0[8:5]),
        .S({\rcount_reg_n_0_[8] ,\rcount_reg_n_0_[7] ,\rcount_reg_n_0_[6] ,\rcount_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \rcount_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(rcount),
        .D(rcount0[9]),
        .Q(\rcount_reg_n_0_[9] ),
        .R(\rcount[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rindex[0]_i_1 
       (.I0(\rindex_reg_n_0_[0] ),
        .O(\rindex[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h15)) 
    \rindex[31]_i_1 
       (.I0(rstate[0]),
        .I1(\FSM_sequential_rstate_reg[1]_i_3_n_0 ),
        .I2(rstate[1]),
        .O(\rindex[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2333)) 
    \rindex[31]_i_2 
       (.I0(bit_done_reg_n_0),
        .I1(rstate[0]),
        .I2(\FSM_sequential_rstate_reg[1]_i_3_n_0 ),
        .I3(rstate[1]),
        .O(rindex));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(\rindex[0]_i_1_n_0 ),
        .Q(\rindex_reg_n_0_[0] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[10]),
        .Q(\rindex_reg_n_0_[10] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[11]),
        .Q(\rindex_reg_n_0_[11] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[12]),
        .Q(\rindex_reg_n_0_[12] ),
        .R(\rindex[31]_i_1_n_0 ));
  CARRY4 \rindex_reg[12]_i_1 
       (.CI(\rindex_reg[8]_i_1_n_0 ),
        .CO({\rindex_reg[12]_i_1_n_0 ,\rindex_reg[12]_i_1_n_1 ,\rindex_reg[12]_i_1_n_2 ,\rindex_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rindex0[12:9]),
        .S({\rindex_reg_n_0_[12] ,\rindex_reg_n_0_[11] ,\rindex_reg_n_0_[10] ,\rindex_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[13]),
        .Q(\rindex_reg_n_0_[13] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[14]),
        .Q(\rindex_reg_n_0_[14] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[15]),
        .Q(\rindex_reg_n_0_[15] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[16]),
        .Q(\rindex_reg_n_0_[16] ),
        .R(\rindex[31]_i_1_n_0 ));
  CARRY4 \rindex_reg[16]_i_1 
       (.CI(\rindex_reg[12]_i_1_n_0 ),
        .CO({\rindex_reg[16]_i_1_n_0 ,\rindex_reg[16]_i_1_n_1 ,\rindex_reg[16]_i_1_n_2 ,\rindex_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rindex0[16:13]),
        .S({\rindex_reg_n_0_[16] ,\rindex_reg_n_0_[15] ,\rindex_reg_n_0_[14] ,\rindex_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[17]),
        .Q(\rindex_reg_n_0_[17] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[18]),
        .Q(\rindex_reg_n_0_[18] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[19]),
        .Q(\rindex_reg_n_0_[19] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[1]),
        .Q(\rindex_reg_n_0_[1] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[20]),
        .Q(\rindex_reg_n_0_[20] ),
        .R(\rindex[31]_i_1_n_0 ));
  CARRY4 \rindex_reg[20]_i_1 
       (.CI(\rindex_reg[16]_i_1_n_0 ),
        .CO({\rindex_reg[20]_i_1_n_0 ,\rindex_reg[20]_i_1_n_1 ,\rindex_reg[20]_i_1_n_2 ,\rindex_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rindex0[20:17]),
        .S({\rindex_reg_n_0_[20] ,\rindex_reg_n_0_[19] ,\rindex_reg_n_0_[18] ,\rindex_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[21]),
        .Q(\rindex_reg_n_0_[21] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[22]),
        .Q(\rindex_reg_n_0_[22] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[23]),
        .Q(\rindex_reg_n_0_[23] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[24]),
        .Q(\rindex_reg_n_0_[24] ),
        .R(\rindex[31]_i_1_n_0 ));
  CARRY4 \rindex_reg[24]_i_1 
       (.CI(\rindex_reg[20]_i_1_n_0 ),
        .CO({\rindex_reg[24]_i_1_n_0 ,\rindex_reg[24]_i_1_n_1 ,\rindex_reg[24]_i_1_n_2 ,\rindex_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rindex0[24:21]),
        .S({\rindex_reg_n_0_[24] ,\rindex_reg_n_0_[23] ,\rindex_reg_n_0_[22] ,\rindex_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[25]),
        .Q(\rindex_reg_n_0_[25] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[26]),
        .Q(\rindex_reg_n_0_[26] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[27]),
        .Q(\rindex_reg_n_0_[27] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[28]),
        .Q(\rindex_reg_n_0_[28] ),
        .R(\rindex[31]_i_1_n_0 ));
  CARRY4 \rindex_reg[28]_i_1 
       (.CI(\rindex_reg[24]_i_1_n_0 ),
        .CO({\rindex_reg[28]_i_1_n_0 ,\rindex_reg[28]_i_1_n_1 ,\rindex_reg[28]_i_1_n_2 ,\rindex_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rindex0[28:25]),
        .S({\rindex_reg_n_0_[28] ,\rindex_reg_n_0_[27] ,\rindex_reg_n_0_[26] ,\rindex_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[29]),
        .Q(\rindex_reg_n_0_[29] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[2]),
        .Q(\rindex_reg_n_0_[2] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[30]),
        .Q(\rindex_reg_n_0_[30] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[31]),
        .Q(\rindex_reg_n_0_[31] ),
        .R(\rindex[31]_i_1_n_0 ));
  CARRY4 \rindex_reg[31]_i_3 
       (.CI(\rindex_reg[28]_i_1_n_0 ),
        .CO({\NLW_rindex_reg[31]_i_3_CO_UNCONNECTED [3:2],\rindex_reg[31]_i_3_n_2 ,\rindex_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rindex_reg[31]_i_3_O_UNCONNECTED [3],rindex0[31:29]}),
        .S({1'b0,\rindex_reg_n_0_[31] ,\rindex_reg_n_0_[30] ,\rindex_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[3]),
        .Q(\rindex_reg_n_0_[3] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[4]),
        .Q(\rindex_reg_n_0_[4] ),
        .R(\rindex[31]_i_1_n_0 ));
  CARRY4 \rindex_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\rindex_reg[4]_i_1_n_0 ,\rindex_reg[4]_i_1_n_1 ,\rindex_reg[4]_i_1_n_2 ,\rindex_reg[4]_i_1_n_3 }),
        .CYINIT(\rindex_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rindex0[4:1]),
        .S({\rindex_reg_n_0_[4] ,\rindex_reg_n_0_[3] ,\rindex_reg_n_0_[2] ,\rindex_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[5]),
        .Q(\rindex_reg_n_0_[5] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[6]),
        .Q(\rindex_reg_n_0_[6] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[7]),
        .Q(\rindex_reg_n_0_[7] ),
        .R(\rindex[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[8]),
        .Q(\rindex_reg_n_0_[8] ),
        .R(\rindex[31]_i_1_n_0 ));
  CARRY4 \rindex_reg[8]_i_1 
       (.CI(\rindex_reg[4]_i_1_n_0 ),
        .CO({\rindex_reg[8]_i_1_n_0 ,\rindex_reg[8]_i_1_n_1 ,\rindex_reg[8]_i_1_n_2 ,\rindex_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rindex0[8:5]),
        .S({\rindex_reg_n_0_[8] ,\rindex_reg_n_0_[7] ,\rindex_reg_n_0_[6] ,\rindex_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \rindex_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(rindex),
        .D(rindex0[9]),
        .Q(\rindex_reg_n_0_[9] ),
        .R(\rindex[31]_i_1_n_0 ));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF rx_done_OBUF_inst
       (.I(rx_done_OBUF),
        .O(rx_done));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rx_done_OBUF_inst_i_1
       (.I0(rx_done0),
        .I1(bit_done_reg_n_0),
        .O(rx_done_OBUF));
  LUT3 #(
    .INIT(8'h01)) 
    rx_done_OBUF_inst_i_10
       (.I0(\rindex_reg_n_0_[17] ),
        .I1(\rindex_reg_n_0_[16] ),
        .I2(\rindex_reg_n_0_[15] ),
        .O(rx_done_OBUF_inst_i_10_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_done_OBUF_inst_i_11
       (.I0(\rindex_reg_n_0_[14] ),
        .I1(\rindex_reg_n_0_[13] ),
        .I2(\rindex_reg_n_0_[12] ),
        .O(rx_done_OBUF_inst_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_done_OBUF_inst_i_12
       (.I0(\rindex_reg_n_0_[11] ),
        .I1(\rindex_reg_n_0_[10] ),
        .I2(\rindex_reg_n_0_[9] ),
        .O(rx_done_OBUF_inst_i_12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_done_OBUF_inst_i_13
       (.I0(\rindex_reg_n_0_[8] ),
        .I1(\rindex_reg_n_0_[7] ),
        .I2(\rindex_reg_n_0_[6] ),
        .O(rx_done_OBUF_inst_i_13_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    rx_done_OBUF_inst_i_14
       (.I0(\rindex_reg_n_0_[5] ),
        .I1(\rindex_reg_n_0_[4] ),
        .I2(\rindex_reg_n_0_[3] ),
        .O(rx_done_OBUF_inst_i_14_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    rx_done_OBUF_inst_i_15
       (.I0(\rindex_reg_n_0_[2] ),
        .I1(\rindex_reg_n_0_[1] ),
        .I2(\rindex_reg_n_0_[0] ),
        .O(rx_done_OBUF_inst_i_15_n_0));
  CARRY4 rx_done_OBUF_inst_i_2
       (.CI(rx_done_OBUF_inst_i_3_n_0),
        .CO({NLW_rx_done_OBUF_inst_i_2_CO_UNCONNECTED[3],rx_done0,rx_done_OBUF_inst_i_2_n_2,rx_done_OBUF_inst_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_done_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,rx_done_OBUF_inst_i_4_n_0,rx_done_OBUF_inst_i_5_n_0,rx_done_OBUF_inst_i_6_n_0}));
  CARRY4 rx_done_OBUF_inst_i_3
       (.CI(rx_done_OBUF_inst_i_7_n_0),
        .CO({rx_done_OBUF_inst_i_3_n_0,rx_done_OBUF_inst_i_3_n_1,rx_done_OBUF_inst_i_3_n_2,rx_done_OBUF_inst_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_done_OBUF_inst_i_3_O_UNCONNECTED[3:0]),
        .S({rx_done_OBUF_inst_i_8_n_0,rx_done_OBUF_inst_i_9_n_0,rx_done_OBUF_inst_i_10_n_0,rx_done_OBUF_inst_i_11_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    rx_done_OBUF_inst_i_4
       (.I0(\rindex_reg_n_0_[31] ),
        .I1(\rindex_reg_n_0_[30] ),
        .O(rx_done_OBUF_inst_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_done_OBUF_inst_i_5
       (.I0(\rindex_reg_n_0_[29] ),
        .I1(\rindex_reg_n_0_[28] ),
        .I2(\rindex_reg_n_0_[27] ),
        .O(rx_done_OBUF_inst_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_done_OBUF_inst_i_6
       (.I0(\rindex_reg_n_0_[26] ),
        .I1(\rindex_reg_n_0_[25] ),
        .I2(\rindex_reg_n_0_[24] ),
        .O(rx_done_OBUF_inst_i_6_n_0));
  CARRY4 rx_done_OBUF_inst_i_7
       (.CI(1'b0),
        .CO({rx_done_OBUF_inst_i_7_n_0,rx_done_OBUF_inst_i_7_n_1,rx_done_OBUF_inst_i_7_n_2,rx_done_OBUF_inst_i_7_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_done_OBUF_inst_i_7_O_UNCONNECTED[3:0]),
        .S({rx_done_OBUF_inst_i_12_n_0,rx_done_OBUF_inst_i_13_n_0,rx_done_OBUF_inst_i_14_n_0,rx_done_OBUF_inst_i_15_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    rx_done_OBUF_inst_i_8
       (.I0(\rindex_reg_n_0_[23] ),
        .I1(\rindex_reg_n_0_[22] ),
        .I2(\rindex_reg_n_0_[21] ),
        .O(rx_done_OBUF_inst_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_done_OBUF_inst_i_9
       (.I0(\rindex_reg_n_0_[20] ),
        .I1(\rindex_reg_n_0_[19] ),
        .I2(\rindex_reg_n_0_[18] ),
        .O(rx_done_OBUF_inst_i_9_n_0));
  OBUF \rx_output_OBUF[0]_inst 
       (.I(rx_output_OBUF[0]),
        .O(rx_output[0]));
  OBUF \rx_output_OBUF[1]_inst 
       (.I(rx_output_OBUF[1]),
        .O(rx_output[1]));
  OBUF \rx_output_OBUF[2]_inst 
       (.I(rx_output_OBUF[2]),
        .O(rx_output[2]));
  OBUF \rx_output_OBUF[3]_inst 
       (.I(rx_output_OBUF[3]),
        .O(rx_output[3]));
  OBUF \rx_output_OBUF[4]_inst 
       (.I(rx_output_OBUF[4]),
        .O(rx_output[4]));
  OBUF \rx_output_OBUF[5]_inst 
       (.I(rx_output_OBUF[5]),
        .O(rx_output[5]));
  OBUF \rx_output_OBUF[6]_inst 
       (.I(rx_output_OBUF[6]),
        .O(rx_output[6]));
  OBUF \rx_output_OBUF[7]_inst 
       (.I(rx_output_OBUF[7]),
        .O(rx_output[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \rxdata[9]_i_1 
       (.I0(rstate[1]),
        .I1(rstate[0]),
        .O(\rxdata[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \rxdata[9]_i_2 
       (.I0(rstate[0]),
        .I1(\FSM_sequential_rstate_reg[1]_i_2_n_0 ),
        .I2(rstate[1]),
        .O(rxdata));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(rx_output_OBUF[1]),
        .Q(rx_output_OBUF[0]),
        .R(\rxdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(rx_output_OBUF[2]),
        .Q(rx_output_OBUF[1]),
        .R(\rxdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(rx_output_OBUF[3]),
        .Q(rx_output_OBUF[2]),
        .R(\rxdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(rx_output_OBUF[4]),
        .Q(rx_output_OBUF[3]),
        .R(\rxdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(rx_output_OBUF[5]),
        .Q(rx_output_OBUF[4]),
        .R(\rxdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(rx_output_OBUF[6]),
        .Q(rx_output_OBUF[5]),
        .R(\rxdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(rx_output_OBUF[7]),
        .Q(rx_output_OBUF[6]),
        .R(\rxdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(\rxdata_reg_n_0_[9] ),
        .Q(rx_output_OBUF[7]),
        .R(\rxdata[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxdata_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(rxdata),
        .D(rx_IBUF),
        .Q(\rxdata_reg_n_0_[9] ),
        .R(\rxdata[9]_i_1_n_0 ));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  LUT3 #(
    .INIT(8'h02)) 
    \tx_data[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\tx_data[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \tx_data[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .O(tx_data0_in));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_in_IBUF[0]),
        .Q(\tx_data_reg_n_0_[1] ),
        .R(\tx_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_in_IBUF[1]),
        .Q(\tx_data_reg_n_0_[2] ),
        .R(\tx_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_in_IBUF[2]),
        .Q(\tx_data_reg_n_0_[3] ),
        .R(\tx_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_in_IBUF[3]),
        .Q(\tx_data_reg_n_0_[4] ),
        .R(\tx_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_in_IBUF[4]),
        .Q(\tx_data_reg_n_0_[5] ),
        .R(\tx_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_in_IBUF[5]),
        .Q(\tx_data_reg_n_0_[6] ),
        .R(\tx_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_in_IBUF[6]),
        .Q(\tx_data_reg_n_0_[7] ),
        .R(\tx_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_in_IBUF[7]),
        .Q(\tx_data_reg_n_0_[8] ),
        .R(\tx_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_state_reg_n_0_[0] ),
        .D(tx_data0_in),
        .Q(\tx_data_reg_n_0_[9] ),
        .R(1'b0));
  OBUF tx_done_OBUF_inst
       (.I(tx_done_OBUF),
        .O(tx_done));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    tx_done_OBUF_inst_i_1
       (.I0(tx_done0),
        .I1(bit_done_reg_n_0),
        .O(tx_done_OBUF));
  LUT3 #(
    .INIT(8'h01)) 
    tx_done_OBUF_inst_i_10
       (.I0(bit_index[17]),
        .I1(bit_index[16]),
        .I2(bit_index[15]),
        .O(tx_done_OBUF_inst_i_10_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tx_done_OBUF_inst_i_11
       (.I0(bit_index[14]),
        .I1(bit_index[13]),
        .I2(bit_index[12]),
        .O(tx_done_OBUF_inst_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tx_done_OBUF_inst_i_12
       (.I0(bit_index[11]),
        .I1(bit_index[10]),
        .I2(bit_index[9]),
        .O(tx_done_OBUF_inst_i_12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tx_done_OBUF_inst_i_13
       (.I0(bit_index[8]),
        .I1(bit_index[7]),
        .I2(bit_index[6]),
        .O(tx_done_OBUF_inst_i_13_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    tx_done_OBUF_inst_i_14
       (.I0(bit_index[5]),
        .I1(bit_index[4]),
        .I2(\bit_index_reg_n_0_[3] ),
        .O(tx_done_OBUF_inst_i_14_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    tx_done_OBUF_inst_i_15
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[0] ),
        .O(tx_done_OBUF_inst_i_15_n_0));
  CARRY4 tx_done_OBUF_inst_i_2
       (.CI(tx_done_OBUF_inst_i_3_n_0),
        .CO({NLW_tx_done_OBUF_inst_i_2_CO_UNCONNECTED[3],tx_done0,tx_done_OBUF_inst_i_2_n_2,tx_done_OBUF_inst_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_done_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,tx_done_OBUF_inst_i_4_n_0,tx_done_OBUF_inst_i_5_n_0,tx_done_OBUF_inst_i_6_n_0}));
  CARRY4 tx_done_OBUF_inst_i_3
       (.CI(tx_done_OBUF_inst_i_7_n_0),
        .CO({tx_done_OBUF_inst_i_3_n_0,tx_done_OBUF_inst_i_3_n_1,tx_done_OBUF_inst_i_3_n_2,tx_done_OBUF_inst_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_done_OBUF_inst_i_3_O_UNCONNECTED[3:0]),
        .S({tx_done_OBUF_inst_i_8_n_0,tx_done_OBUF_inst_i_9_n_0,tx_done_OBUF_inst_i_10_n_0,tx_done_OBUF_inst_i_11_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    tx_done_OBUF_inst_i_4
       (.I0(bit_index[31]),
        .I1(bit_index[30]),
        .O(tx_done_OBUF_inst_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tx_done_OBUF_inst_i_5
       (.I0(bit_index[29]),
        .I1(bit_index[28]),
        .I2(bit_index[27]),
        .O(tx_done_OBUF_inst_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tx_done_OBUF_inst_i_6
       (.I0(bit_index[26]),
        .I1(bit_index[25]),
        .I2(bit_index[24]),
        .O(tx_done_OBUF_inst_i_6_n_0));
  CARRY4 tx_done_OBUF_inst_i_7
       (.CI(1'b0),
        .CO({tx_done_OBUF_inst_i_7_n_0,tx_done_OBUF_inst_i_7_n_1,tx_done_OBUF_inst_i_7_n_2,tx_done_OBUF_inst_i_7_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tx_done_OBUF_inst_i_7_O_UNCONNECTED[3:0]),
        .S({tx_done_OBUF_inst_i_12_n_0,tx_done_OBUF_inst_i_13_n_0,tx_done_OBUF_inst_i_14_n_0,tx_done_OBUF_inst_i_15_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    tx_done_OBUF_inst_i_8
       (.I0(bit_index[23]),
        .I1(bit_index[22]),
        .I2(bit_index[21]),
        .O(tx_done_OBUF_inst_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    tx_done_OBUF_inst_i_9
       (.I0(bit_index[20]),
        .I1(bit_index[19]),
        .I2(bit_index[18]),
        .O(tx_done_OBUF_inst_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    tx_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C080400)) 
    tx_i_2
       (.I0(\bit_index_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\bit_index_reg_n_0_[3] ),
        .I3(tx_i_3_n_0),
        .I4(tx_i_4_n_0),
        .I5(tx_i_5_n_0),
        .O(tx_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE2CCE200)) 
    tx_i_3
       (.I0(\tx_data_reg_n_0_[1] ),
        .I1(\bit_index_reg_n_0_[1] ),
        .I2(\tx_data_reg_n_0_[3] ),
        .I3(\bit_index_reg_n_0_[0] ),
        .I4(\tx_data_reg_n_0_[2] ),
        .O(tx_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_4
       (.I0(\tx_data_reg_n_0_[7] ),
        .I1(\tx_data_reg_n_0_[6] ),
        .I2(\bit_index_reg_n_0_[1] ),
        .I3(\tx_data_reg_n_0_[5] ),
        .I4(\bit_index_reg_n_0_[0] ),
        .I5(\tx_data_reg_n_0_[4] ),
        .O(tx_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFB8000000)) 
    tx_i_5
       (.I0(\tx_data_reg_n_0_[9] ),
        .I1(\bit_index_reg_n_0_[0] ),
        .I2(\tx_data_reg_n_0_[8] ),
        .I3(\bit_index_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(tx_i_5_n_0));
  IBUF \tx_in_IBUF[0]_inst 
       (.I(tx_in[0]),
        .O(tx_in_IBUF[0]));
  IBUF \tx_in_IBUF[1]_inst 
       (.I(tx_in[1]),
        .O(tx_in_IBUF[1]));
  IBUF \tx_in_IBUF[2]_inst 
       (.I(tx_in[2]),
        .O(tx_in_IBUF[2]));
  IBUF \tx_in_IBUF[3]_inst 
       (.I(tx_in[3]),
        .O(tx_in_IBUF[3]));
  IBUF \tx_in_IBUF[4]_inst 
       (.I(tx_in[4]),
        .O(tx_in_IBUF[4]));
  IBUF \tx_in_IBUF[5]_inst 
       (.I(tx_in[5]),
        .O(tx_in_IBUF[5]));
  IBUF \tx_in_IBUF[6]_inst 
       (.I(tx_in[6]),
        .O(tx_in_IBUF[6]));
  IBUF \tx_in_IBUF[7]_inst 
       (.I(tx_in[7]),
        .O(tx_in_IBUF[7]));
  FDRE #(
    .INIT(1'b0)) 
    tx_reg
       (.C(clk_IBUF_BUFG),
        .CE(tx_i_1_n_0),
        .D(tx_i_2_n_0),
        .Q(tx_OBUF),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
