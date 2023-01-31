#!/bin/bash

for filename in $(ls -l in/ | awk '{print $9}'); do
    temp=(${filename//./ })

    #./pcm2wav.sh ./in ${temp[0]}
    ./wav2wav.sh ./in ${temp[0]}
    #./raw2pcm.sh /home/share/xu_to_panxin ./in ${temp[0]}
    #./wav2pcm.sh /home/share/xu_to_panxin ./in ${temp[0]}

    # raw2wav can only be used for sednn and its belong test !!
    #./raw2wav.sh /home/share/xu_to_panxin ./in ${temp[0]}
    #./mp32wav.sh ./in ${temp[0]}
done

echo "Done!"
exit 1
