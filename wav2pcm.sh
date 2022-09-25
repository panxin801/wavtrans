#usage wav_format_tranform.sh /home/xuyanhan/data/xu_to_panxin /home/conference/dspweb/web/upload/20180806/ee26908bf9629eeb4b37dac350f4754a/1533519172 test123
wavpath=$2
filename=$3

#export LD_LIBRARY_PATH=$home_dir/lib:$LD_LIBRARY_PATH
#export LC_ALL=C
#/home/xuyanhan/data/xu_to_panxin store path

$home_dir/ffmpeg/ffmpeg -y -i $wavpath/${filename}.wav -acodec pcm_s16le -f s16le -ac 1 -ar 16000 $wavpath/${filename}.pcm

#$home_dir/ffmpeg/ffmpeg -y  -i $wavpath/${filename}.WAV  -acodec pcm_s16le -f s16le -ac 1 -ar 16000 $wavpath/out/${filename}.pcm
#rm $wavpath/${filename}.wav
