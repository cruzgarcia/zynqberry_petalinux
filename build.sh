#!/bin/bash

cd tcl
echo ""
echo "*** Building Vivado Project ***"
vivado -mode batch -source vivado_build.tcl -notrace
echo "Done"

exit 0
# --------------------------------------------
# TODO

echo ""
echo ""
echo ""
echo "*** Building Vitis Project ***"
xsct vitis_build.tcl
echo "Done"


# Petalinux tools should be in PATH

project_name="zynqberryOS"
configs="configs"

# Create the petalinux project
echo "Creating project " $project_name
petalinux-create --type project --template zynq --name $project_name

# Copy predefined configurations
#cp -r $configs $project_name/project-spec

# Configure
echo ""
echo "Running petalinux build..."
cd $project_name
#petalinux-config --silentconfig --get-hw-description ../prebuilt/

#echo "Running kernel config"
#petalinux-config -c kernel --oldconfig
#petalinux-build -c kernel -x finish

#echo "Copying BSP device tree..."
#cp bsp-device-tree/* project-spec/meta-user/recipes-bsp/device-tree/files/
#echo "DONE"

#


echo "DONE"
# Configure
# cd $project_name

