#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon Mar 18 17:54:28 -03 2019
# SW Build 2258646 on Thu Jun 14 20:02:38 MDT 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xsim interface_sim_behav -key {Behavioral:sim_1:Functional:interface_sim} -tclbatch interface_sim.tcl -view /usr/local/magnetic2/Xilinx/Vivado/Vivado/2018.2/bin/Arquitectura2018/TP_BIP/allTest_func_synth.wcfg -log simulate.log
