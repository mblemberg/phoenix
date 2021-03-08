#!/bin/bash

# requires root priveleges

set -x

# wait a bit so that mining can start
sleep 60

# set power limit
nvidia-smi -pm ENABLED
nvidia-smi -i 0 -pl 85

pkill X
sleep 2
pkill X
sleep 2
X :0 &
sleep 2
export DISPLAY=:0

nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[2]=-1008
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[3]=-1008
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[4]=-1008

nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[2]=-200
nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[3]=-200
