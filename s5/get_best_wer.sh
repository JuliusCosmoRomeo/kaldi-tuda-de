time=$(date +"%Y-%m-%d-%H-%M-%S")
for x in exp/*/decode_tibAvTestSet; do [ -d $x ] && grep WER $x/wer_* | utils/best_wer.sh; done | sort -n -r -k2 > DEC_RESULTS.$USER.$time
