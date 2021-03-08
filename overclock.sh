#!/bin/bash

# requires root priveleges

set -x

# wait a bit so that mining can start
# sleep 60

# set power limit
nvidia-smi -pm ENABLED
nvidia-smi -i 0 -pl 85
nvidia-smi -i 1 -pl 85
nvidia-smi -i 2 -pl 85
nvidia-smi -i 3 -pl 85

#pkill X
#sleep 2
#pkill X
#sleep 2
#X :0 &
#sleep 2
#export DISPLAY=:0

# overclock GPU 0
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[2]=-1008
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[3]=-1008
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[4]=-1008

nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[2]=-200
nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[3]=-200

# overclock GPU 1
nvidia-settings -a [gpu:1]/GPUMemoryTransferRateOffset[2]=-1008
nvidia-settings -a [gpu:1]/GPUMemoryTransferRateOffset[3]=-1008
nvidia-settings -a [gpu:1]/GPUMemoryTransferRateOffset[4]=-1008

nvidia-settings -a [gpu:1]/GPUGraphicsClockOffset[2]=-200
nvidia-settings -a [gpu:1]/GPUGraphicsClockOffset[3]=-200

# overclock GPU 2
nvidia-settings -a [gpu:2]/GPUMemoryTransferRateOffset[2]=-1008
nvidia-settings -a [gpu:2]/GPUMemoryTransferRateOffset[3]=-1008
nvidia-settings -a [gpu:2]/GPUMemoryTransferRateOffset[4]=-1008

nvidia-settings -a [gpu:2]/GPUGraphicsClockOffset[2]=-200
nvidia-settings -a [gpu:2]/GPUGraphicsClockOffset[3]=-200

# overclock GPU 3
nvidia-settings -a [gpu:3]/GPUMemoryTransferRateOffset[2]=-1008
nvidia-settings -a [gpu:3]/GPUMemoryTransferRateOffset[3]=-1008
nvidia-settings -a [gpu:3]/GPUMemoryTransferRateOffset[4]=-1008

nvidia-settings -a [gpu:3]/GPUGraphicsClockOffset[2]=-200
nvidia-settings -a [gpu:3]/GPUGraphicsClockOffset[3]=-200
