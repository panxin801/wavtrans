#!/bin/bash

set -euo pipefail

wavpath=$1
filename=$2

# convert from 48k 16bit mono to 16k 16 bit mono
ffmpeg -i ${wavpath}/${filename}.m4a -ac 1 -f wav -acodec pcm_s16le ${wavpath}/${filename}.wav
# ffmpeg -f s16le -ac 1 -ar 48k -i ${wavpath}/${filename}.wav -ar 16k -ac 1 ${wavpath}/after/${filename}.wav
