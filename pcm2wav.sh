#usage wav_format_tranform.sh /home/xuyanhan/data/xu_to_panxin /home/conference/dspweb/web/upload/20180806/ee26908bf9629eeb4b37dac350f4754a/1533519172 test123
home_dir=$1
wavpath=$2
filename=$3

#export LD_LIBRARY_PATH=$home_dir/lib:$LD_LIBRARY_PATH
#export LC_ALL=C
#/home/xuyanhan/data/xu_to_panxin store path

$home_dir/ffmpeg/ffmpeg -f s16le -ar 16000 -ac 1 -acodec pcm_s16le -i $wavpath/${filename}.pcm $wavpath/aftwav/${filename}_R.WAV

# transform a file from pcm to wav by using ffmpeg
#$home_dir/ffmpeg/ffmpeg -f s16le -ar 16000 -ac 1 -acodec pcm_s16le -i $wavpath/${filename}.pcm $wavpath/${filename}.wav
#rm $wavpath/${filename}.pcm
