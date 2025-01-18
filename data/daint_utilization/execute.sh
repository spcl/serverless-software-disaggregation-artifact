#!/usr/bin/zsh

PAUSE=$1

echo "Begin polling sinfo statistics every $1 seconds"

mkdir -p sinfo_results
correction=0
while true
do
  start=$(date +"%s%3N")
  timestamp=$(date -d @$((start/1000)) +"%y_%m_%d_%H_%M_%S")
  timestamp2=$(date -d @$((start/1000)) +"%H:%M:%S")
  echo "Begin sinfo dump to sinfo_${timestamp} at $timestamp2:$((start%1000))"
  sinfo -N -e -O Nodelist,Nodes,StateLong,CPUsState,AllocMem,FreeMem,Memory > sinfo_results/sinfo_${timestamp}
  end=$(date +"%s%3N")
  timestamp2=$(date -d @$((end/1000)) +"%H:%M:%S")
  runtime=$(($1-(end-start)/1000.0))
  runtime=$(($runtime - $correction-0.005))
  echo "Finished sinfo dump to sinfo_${timestamp} at $timestamp2:$((end%1000)), sleep $runtime after correction $correction"
	if [[ (($runtime -gt 0)) ]]; then
		sleep $((runtime))
	fi
  end=$(date +"%s%3N")
  timestamp2=$(date -d @$((end/1000)) +"%H:%M:%S")
  runtime=$(((end-start)/1000.0))
  echo "Finished sinfo dump to sinfo_${timestamp} and sleep at $timestamp2:$((end%1000)), spent in total $runtime"
  correction=$((runtime-$1))
done

