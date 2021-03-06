# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xczu3eg-sfvc784-1LV-i

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.cache/wt} [current_project]
set_property parent.project_path {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {d:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog {
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_def.vh}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_def.vh}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_undef.vh}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_defines.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_undef.vh}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/debug/dbg_config.vh}
}
set_property file_type "Verilog Header" [get_files {{D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_def.vh}}]
set_property file_type "Verilog Header" [get_files {{D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_def.vh}}]
set_property file_type "Verilog Header" [get_files {{D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_undef.vh}}]
set_property file_type "Verilog Header" [get_files {{D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_defines.v}}]
set_property file_type "Verilog Header" [get_files {{D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_undef.vh}}]
set_property file_type "Verilog Header" [get_files {{D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/debug/dbg_config.vh}}]
read_verilog -library xil_defaultlib -sv {
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/arb_rr.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/debug/dii_channel.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/dii_channel.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_initiator.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_initiator_nocreq.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_initiator_nocresp.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_request_table.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_target.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_packet_buffer.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/header/optimsoc_functions.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/debug/mor1kx_trace_exec.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/header/optimsoc_config.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/mpbuffer.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/mpbuffer_endpoint.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/mpbuffer_wb.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/network_adapter/networkadapter_conf.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/network_adapter/networkadapter_ct.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_buffer.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/header/optimsoc_constants.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_demux.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_mux.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_router.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_router_input.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_router_lookup.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_router_lookup_slice.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_router_output.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/noc_soc.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/header/noc_soc_functions.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/header/noc_soc_config.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/noc_vchannel_mux.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_aes_top.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_des3_top.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_dft_top_top.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_fir_top.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_idft_top_top.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_md5_top.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_picorv32_top.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_ram_wb_01.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_ram_wb_02.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/top/tile_uart_top.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/wb_bus_b3/wb_decode.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/wb_bus_b3/wb_interconnect_arb_rr.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/wb_bus_b3/wb_mux.sv}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/top/tb_system.sv}
}
read_verilog -library xil_defaultlib {
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/dsp/fir/FIR_filter.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/aes/aes_192.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/aes/aes_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/crp.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/des3.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/des3_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/dsp/dft/dft_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/dsp/dft/dft_top_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/dsp/fir/fir_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/dsp/idft/idft_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/dsp/idft/idft_top_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/key_sel3.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_arb_rr.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_initiator_wbreq.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/router/lisnoc_dma_wbinterface.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/md5/md5_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/md5/pancham.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/md5/pancham_round.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/picorv32/picorv32.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/picorv32/picorv32_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/ram/ram_wb_1.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/ram/ram_wb_2.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/raminfr.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/aes/round.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/sbox1.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/sbox2.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/sbox3.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/sbox4.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/sbox5.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/sbox6.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/sbox7.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/des3/sbox8.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/crypto/aes/table.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_receiver.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_regs.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_rfifo.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_sync_flops.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_tfifo.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_top.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_transmitter.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/uart/uart_wb.v}
  {D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/sources_1/imports/RTL/wb_bus_b3/wb_bus_b3.v}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/constrs_1/imports/header/noc_soc_constraints.xdc}}
set_property used_in_implementation false [get_files {{D:/OneDrive/OneDrive - University of Florida/SoC Compiler Tool/SoCCom_v1.0/precompiled designs/noc_soc_soccom/noc_soc_soccom.srcs/constrs_1/imports/header/noc_soc_constraints.xdc}}]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top tb_system -part xczu3eg-sfvc784-1LV-i


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef tb_system.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file tb_system_utilization_synth.rpt -pb tb_system_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
