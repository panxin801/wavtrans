#!/bin/bash
path="/home/panxin/wavtrans/vadd/"
i=15
while [ "${i}" -le "16" ]; do
    a=$(printf "1%05d" "${i}")
    i=$(($i + 1))
    b=$(printf "1%05d" "${i}")
    i=$(($i + 1))
    c=$(printf "1%05d" "${i}")

    #/home/xuyanhan/data/xu_to_panxin/ffmpeg/ffmpeg -i ${path}${a}.wav -i ${path}${b}.wav -i ${path}${c}.wav -filter_complex '[0:0] [1:0] [2:0] concat=n=3:v=0:a=1 [a]' -map [a] /home/panxin/wavtrans/vaddout/${i}.wav

    /home/xuyanhan/data/xu_to_panxin/ffmpeg/ffmpeg -i ${path}${a}.wav -i ${path}${b}.wav -filter_complex '[0:0] [1:0] concat=n=2:v=0:a=1 [a]' -map [a] /home/panxin/wavtrans/vaddout/${i}.wav
    ((i++))

    echo ${a} ${b}
done

echo "Done"
exit 1
