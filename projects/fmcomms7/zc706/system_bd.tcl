
set adc_fifo_name axi_ad9680_fifo
set adc_fifo_address_width 16
set adc_data_width 128
set adc_dma_data_width 64

set dac_fifo_name axi_ad9144_fifo
set dac_fifo_address_width 10
set dac_data_width 256
set dac_dma_data_width 256

source $ad_hdl_dir/projects/common/zc706/zc706_system_bd.tcl
source $ad_hdl_dir/projects/common/zc706/zc706_plddr3_adcfifo_bd.tcl
source $ad_hdl_dir/projects/common/xilinx/dacfifo_bd.tcl
source ../common/fmcomms7_bd.tcl

ad_connect axi_fmcomms7_xcvr/gt0_rx axi_ad9680_jesd/rx_phy1
ad_connect axi_fmcomms7_xcvr/gt1_rx axi_ad9680_jesd/rx_phy3
ad_connect axi_fmcomms7_xcvr/gt2_rx axi_ad9680_jesd/rx_phy2
ad_connect axi_fmcomms7_xcvr/gt3_rx axi_ad9680_jesd/rx_phy0

ad_connect axi_ad9144_jesd/tx_phy3 axi_fmcomms7_xcvr/gt0_tx
ad_connect axi_ad9144_jesd/tx_phy7 axi_fmcomms7_xcvr/gt1_tx
ad_connect axi_ad9144_jesd/tx_phy6 axi_fmcomms7_xcvr/gt2_tx
ad_connect axi_ad9144_jesd/tx_phy5 axi_fmcomms7_xcvr/gt3_tx
ad_connect axi_ad9144_jesd/tx_phy2 axi_fmcomms7_xcvr/gt4_tx
ad_connect axi_ad9144_jesd/tx_phy0 axi_fmcomms7_xcvr/gt5_tx
ad_connect axi_ad9144_jesd/tx_phy1 axi_fmcomms7_xcvr/gt6_tx
ad_connect axi_ad9144_jesd/tx_phy4 axi_fmcomms7_xcvr/gt7_tx

