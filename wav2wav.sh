#usage wav_format_tranform.sh /home/xuyanhan/data/xu_to_panxin /home/conference/dspweb/web/upload/20180806/ee26908bf9629eeb4b37dac350f4754a/1533519172 test123
wavpath=$1
filename=$2

#export LD_LIBRARY_PATH=$home_dir/lib:$LD_LIBRARY_PATH
#export LC_ALL=C
#/home/xuyanhan/data/xu_to_panxin store path

# covert to 24k 16bit mono
#ffmpeg -i $wavpath/${filename}.wav -ar 24k -ac 1 $wavpath/after/${filename}.wav

# convert to 16k 16bit mono
#ffmpeg -i ${wavpath}/${filename}.wav -ar 16k -ac 1 ${wavpath}/after/${filename}.wav

# convert to 48k 16bit mono
ffmpeg -i ${wavpath}/${filename}.wav -ar 22050 -ac 1 ${wavpath}/after/${filename}.wav

# convert from 48k 16bit mono to 16k 16 bit mono
#ffmpeg -f s16le -ac 1 -ar 48k -i ${wavpath}/${filename}.wav -ar 16k -ac 1 ${wavpath}/after/${filename}.wav
