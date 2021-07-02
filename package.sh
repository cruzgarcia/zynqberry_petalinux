#!/bin/bash

petalinux-package --boot --fsbl ../prebuilt/software/m_512MB/fsbl.elf --fpga ../prebuilt/hardware/m_512MB/zynqberrydemo2_m_512MB.bit --u-boot
