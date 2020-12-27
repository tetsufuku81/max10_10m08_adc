// max10_adc_modular_adc_0.v

// This file was auto-generated from altera_modular_adc_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module max10_adc_modular_adc_0 (
		input  wire        clock_clk,                  //            clock.clk
		input  wire        reset_sink_reset_n,         //       reset_sink.reset_n
		input  wire        adc_pll_clock_clk,          //    adc_pll_clock.clk
		input  wire        adc_pll_locked_export,      //   adc_pll_locked.export
		input  wire        sequencer_csr_address,      //    sequencer_csr.address
		input  wire        sequencer_csr_read,         //                 .read
		input  wire        sequencer_csr_write,        //                 .write
		input  wire [31:0] sequencer_csr_writedata,    //                 .writedata
		output wire [31:0] sequencer_csr_readdata,     //                 .readdata
		input  wire [6:0]  sample_store_csr_address,   // sample_store_csr.address
		input  wire        sample_store_csr_read,      //                 .read
		input  wire        sample_store_csr_write,     //                 .write
		input  wire [31:0] sample_store_csr_writedata, //                 .writedata
		output wire [31:0] sample_store_csr_readdata,  //                 .readdata
		output wire        sample_store_irq_irq        // sample_store_irq.irq
	);

	wire         sequencer_internal_command_valid;         // sequencer_internal:cmd_valid -> control_internal:cmd_valid
	wire         sequencer_internal_command_ready;         // control_internal:cmd_ready -> sequencer_internal:cmd_ready
	wire   [4:0] sequencer_internal_command_channel;       // sequencer_internal:cmd_channel -> control_internal:cmd_channel
	wire         sequencer_internal_command_startofpacket; // sequencer_internal:cmd_sop -> control_internal:cmd_sop
	wire         sequencer_internal_command_endofpacket;   // sequencer_internal:cmd_eop -> control_internal:cmd_eop
	wire         control_internal_response_valid;          // control_internal:rsp_valid -> sample_store_internal:rsp_valid
	wire  [11:0] control_internal_response_data;           // control_internal:rsp_data -> sample_store_internal:rsp_data
	wire   [4:0] control_internal_response_channel;        // control_internal:rsp_channel -> sample_store_internal:rsp_channel
	wire         control_internal_response_startofpacket;  // control_internal:rsp_sop -> sample_store_internal:rsp_sop
	wire         control_internal_response_endofpacket;    // control_internal:rsp_eop -> sample_store_internal:rsp_eop

	altera_modular_adc_control #(
		.clkdiv                          (2),
		.tsclkdiv                        (1),
		.tsclksel                        (1),
		.hard_pwd                        (0),
		.prescalar                       (0),
		.refsel                          (0),
		.device_partname_fivechar_prefix ("10M08"),
		.is_this_first_or_second_adc     (1),
		.analog_input_pin_mask           (0),
		.dual_adc_mode                   (0),
		.enable_usr_sim                  (0),
		.reference_voltage_sim           (49648),
		.simfilename_ch0                 (""),
		.simfilename_ch1                 (""),
		.simfilename_ch2                 (""),
		.simfilename_ch3                 (""),
		.simfilename_ch4                 (""),
		.simfilename_ch5                 (""),
		.simfilename_ch6                 (""),
		.simfilename_ch7                 (""),
		.simfilename_ch8                 (""),
		.simfilename_ch9                 (""),
		.simfilename_ch10                (""),
		.simfilename_ch11                (""),
		.simfilename_ch12                (""),
		.simfilename_ch13                (""),
		.simfilename_ch14                (""),
		.simfilename_ch15                (""),
		.simfilename_ch16                ("")
	) control_internal (
		.clk               (clock_clk),                                //         clock.clk
		.cmd_valid         (sequencer_internal_command_valid),         //       command.valid
		.cmd_channel       (sequencer_internal_command_channel),       //              .channel
		.cmd_sop           (sequencer_internal_command_startofpacket), //              .startofpacket
		.cmd_eop           (sequencer_internal_command_endofpacket),   //              .endofpacket
		.cmd_ready         (sequencer_internal_command_ready),         //              .ready
		.rst_n             (reset_sink_reset_n),                       //    reset_sink.reset_n
		.rsp_valid         (control_internal_response_valid),          //      response.valid
		.rsp_channel       (control_internal_response_channel),        //              .channel
		.rsp_data          (control_internal_response_data),           //              .data
		.rsp_sop           (control_internal_response_startofpacket),  //              .startofpacket
		.rsp_eop           (control_internal_response_endofpacket),    //              .endofpacket
		.clk_in_pll_c0     (adc_pll_clock_clk),                        // adc_pll_clock.clk
		.clk_in_pll_locked (adc_pll_locked_export),                    //   conduit_end.export
		.sync_valid        (),                                         //   (terminated)
		.sync_ready        (1'b0)                                      //   (terminated)
	);

	altera_modular_adc_sequencer #(
		.DUAL_ADC_MODE    (0),
		.CSD_LENGTH       (1),
		.CSD_SLOT_0       (5'b10001),
		.CSD_SLOT_1       (5'b00000),
		.CSD_SLOT_2       (5'b00000),
		.CSD_SLOT_3       (5'b00000),
		.CSD_SLOT_4       (5'b00000),
		.CSD_SLOT_5       (5'b00000),
		.CSD_SLOT_6       (5'b00000),
		.CSD_SLOT_7       (5'b00000),
		.CSD_SLOT_8       (5'b00000),
		.CSD_SLOT_9       (5'b00000),
		.CSD_SLOT_10      (5'b00000),
		.CSD_SLOT_11      (5'b00000),
		.CSD_SLOT_12      (5'b00000),
		.CSD_SLOT_13      (5'b00000),
		.CSD_SLOT_14      (5'b00000),
		.CSD_SLOT_15      (5'b00000),
		.CSD_SLOT_16      (5'b00000),
		.CSD_SLOT_17      (5'b00000),
		.CSD_SLOT_18      (5'b00000),
		.CSD_SLOT_19      (5'b00000),
		.CSD_SLOT_20      (5'b00000),
		.CSD_SLOT_21      (5'b00000),
		.CSD_SLOT_22      (5'b00000),
		.CSD_SLOT_23      (5'b00000),
		.CSD_SLOT_24      (5'b00000),
		.CSD_SLOT_25      (5'b00000),
		.CSD_SLOT_26      (5'b00000),
		.CSD_SLOT_27      (5'b00000),
		.CSD_SLOT_28      (5'b00000),
		.CSD_SLOT_29      (5'b00000),
		.CSD_SLOT_30      (5'b00000),
		.CSD_SLOT_31      (5'b00000),
		.CSD_SLOT_32      (5'b00000),
		.CSD_SLOT_33      (5'b00000),
		.CSD_SLOT_34      (5'b00000),
		.CSD_SLOT_35      (5'b00000),
		.CSD_SLOT_36      (5'b00000),
		.CSD_SLOT_37      (5'b00000),
		.CSD_SLOT_38      (5'b00000),
		.CSD_SLOT_39      (5'b00000),
		.CSD_SLOT_40      (5'b00000),
		.CSD_SLOT_41      (5'b00000),
		.CSD_SLOT_42      (5'b00000),
		.CSD_SLOT_43      (5'b00000),
		.CSD_SLOT_44      (5'b00000),
		.CSD_SLOT_45      (5'b00000),
		.CSD_SLOT_46      (5'b00000),
		.CSD_SLOT_47      (5'b00000),
		.CSD_SLOT_48      (5'b00000),
		.CSD_SLOT_49      (5'b00000),
		.CSD_SLOT_50      (5'b00000),
		.CSD_SLOT_51      (5'b00000),
		.CSD_SLOT_52      (5'b00000),
		.CSD_SLOT_53      (5'b00000),
		.CSD_SLOT_54      (5'b00000),
		.CSD_SLOT_55      (5'b00000),
		.CSD_SLOT_56      (5'b00000),
		.CSD_SLOT_57      (5'b00000),
		.CSD_SLOT_58      (5'b00000),
		.CSD_SLOT_59      (5'b00000),
		.CSD_SLOT_60      (5'b00000),
		.CSD_SLOT_61      (5'b00000),
		.CSD_SLOT_62      (5'b00000),
		.CSD_SLOT_63      (5'b00000),
		.CSD_SLOT_0_ADC2  (5'b00000),
		.CSD_SLOT_1_ADC2  (5'b00000),
		.CSD_SLOT_2_ADC2  (5'b00000),
		.CSD_SLOT_3_ADC2  (5'b00000),
		.CSD_SLOT_4_ADC2  (5'b00000),
		.CSD_SLOT_5_ADC2  (5'b00000),
		.CSD_SLOT_6_ADC2  (5'b00000),
		.CSD_SLOT_7_ADC2  (5'b00000),
		.CSD_SLOT_8_ADC2  (5'b00000),
		.CSD_SLOT_9_ADC2  (5'b00000),
		.CSD_SLOT_10_ADC2 (5'b00000),
		.CSD_SLOT_11_ADC2 (5'b00000),
		.CSD_SLOT_12_ADC2 (5'b00000),
		.CSD_SLOT_13_ADC2 (5'b00000),
		.CSD_SLOT_14_ADC2 (5'b00000),
		.CSD_SLOT_15_ADC2 (5'b00000),
		.CSD_SLOT_16_ADC2 (5'b00000),
		.CSD_SLOT_17_ADC2 (5'b00000),
		.CSD_SLOT_18_ADC2 (5'b00000),
		.CSD_SLOT_19_ADC2 (5'b00000),
		.CSD_SLOT_20_ADC2 (5'b00000),
		.CSD_SLOT_21_ADC2 (5'b00000),
		.CSD_SLOT_22_ADC2 (5'b00000),
		.CSD_SLOT_23_ADC2 (5'b00000),
		.CSD_SLOT_24_ADC2 (5'b00000),
		.CSD_SLOT_25_ADC2 (5'b00000),
		.CSD_SLOT_26_ADC2 (5'b00000),
		.CSD_SLOT_27_ADC2 (5'b00000),
		.CSD_SLOT_28_ADC2 (5'b00000),
		.CSD_SLOT_29_ADC2 (5'b00000),
		.CSD_SLOT_30_ADC2 (5'b00000),
		.CSD_SLOT_31_ADC2 (5'b00000),
		.CSD_SLOT_32_ADC2 (5'b00000),
		.CSD_SLOT_33_ADC2 (5'b00000),
		.CSD_SLOT_34_ADC2 (5'b00000),
		.CSD_SLOT_35_ADC2 (5'b00000),
		.CSD_SLOT_36_ADC2 (5'b00000),
		.CSD_SLOT_37_ADC2 (5'b00000),
		.CSD_SLOT_38_ADC2 (5'b00000),
		.CSD_SLOT_39_ADC2 (5'b00000),
		.CSD_SLOT_40_ADC2 (5'b00000),
		.CSD_SLOT_41_ADC2 (5'b00000),
		.CSD_SLOT_42_ADC2 (5'b00000),
		.CSD_SLOT_43_ADC2 (5'b00000),
		.CSD_SLOT_44_ADC2 (5'b00000),
		.CSD_SLOT_45_ADC2 (5'b00000),
		.CSD_SLOT_46_ADC2 (5'b00000),
		.CSD_SLOT_47_ADC2 (5'b00000),
		.CSD_SLOT_48_ADC2 (5'b00000),
		.CSD_SLOT_49_ADC2 (5'b00000),
		.CSD_SLOT_50_ADC2 (5'b00000),
		.CSD_SLOT_51_ADC2 (5'b00000),
		.CSD_SLOT_52_ADC2 (5'b00000),
		.CSD_SLOT_53_ADC2 (5'b00000),
		.CSD_SLOT_54_ADC2 (5'b00000),
		.CSD_SLOT_55_ADC2 (5'b00000),
		.CSD_SLOT_56_ADC2 (5'b00000),
		.CSD_SLOT_57_ADC2 (5'b00000),
		.CSD_SLOT_58_ADC2 (5'b00000),
		.CSD_SLOT_59_ADC2 (5'b00000),
		.CSD_SLOT_60_ADC2 (5'b00000),
		.CSD_SLOT_61_ADC2 (5'b00000),
		.CSD_SLOT_62_ADC2 (5'b00000),
		.CSD_SLOT_63_ADC2 (5'b00000)
	) sequencer_internal (
		.clk           (clock_clk),                                //      clock.clk
		.rst_n         (reset_sink_reset_n),                       // reset_sink.reset_n
		.cmd_ready     (sequencer_internal_command_ready),         //    command.ready
		.cmd_valid     (sequencer_internal_command_valid),         //           .valid
		.cmd_channel   (sequencer_internal_command_channel),       //           .channel
		.cmd_sop       (sequencer_internal_command_startofpacket), //           .startofpacket
		.cmd_eop       (sequencer_internal_command_endofpacket),   //           .endofpacket
		.addr          (sequencer_csr_address),                    //        csr.address
		.read          (sequencer_csr_read),                       //           .read
		.write         (sequencer_csr_write),                      //           .write
		.writedata     (sequencer_csr_writedata),                  //           .writedata
		.readdata      (sequencer_csr_readdata),                   //           .readdata
		.cmd_ready_2   (1'b0),                                     // (terminated)
		.cmd_valid_2   (),                                         // (terminated)
		.cmd_channel_2 (),                                         // (terminated)
		.cmd_sop_2     (),                                         // (terminated)
		.cmd_eop_2     ()                                          // (terminated)
	);

	altera_modular_adc_sample_store #(
		.DUAL_ADC_MODE  (0),
		.RSP_DATA_WIDTH (12)
	) sample_store_internal (
		.clk         (clock_clk),                               //            clock.clk
		.rst_n       (reset_sink_reset_n),                      //       reset_sink.reset_n
		.rsp_valid   (control_internal_response_valid),         //         response.valid
		.rsp_channel (control_internal_response_channel),       //                 .channel
		.rsp_sop     (control_internal_response_startofpacket), //                 .startofpacket
		.rsp_eop     (control_internal_response_endofpacket),   //                 .endofpacket
		.rsp_data    (control_internal_response_data),          //                 .data
		.addr        (sample_store_csr_address),                //              csr.address
		.read        (sample_store_csr_read),                   //                 .read
		.write       (sample_store_csr_write),                  //                 .write
		.writedata   (sample_store_csr_writedata),              //                 .writedata
		.readdata    (sample_store_csr_readdata),               //                 .readdata
		.irq         (sample_store_irq_irq)                     // interrupt_sender.irq
	);

endmodule
