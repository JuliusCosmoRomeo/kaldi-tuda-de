time=$(date +"%Y-%m-%d-%H-%M-%S")
for x in $1/exp/sgmm_5a/$1 $1/exp/tri3b/$1; do [ -d $x ] && grep WER $x/wer_* | utils/best_wer.sh; done | sort -n -r -k2 > $1/DEC_RESULTS.$USER.$time
cat $1/DEC_RESULTS.$USER.$time


