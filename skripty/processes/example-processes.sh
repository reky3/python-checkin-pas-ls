#!/usr/bin/env bash

#echo "processes"
#ps -ef | grep 123

echo "move processe to bg"
sleep 10 &

echo "PID of last bg processes"
sleep 5 &
echo "$!"
ps -ef | grep 'sleep 5' | grep -v 'grep'

echo "PID of a runnign script:"
ps -ef | grep "$0" | grep -v 'grep'

#da mi PID scriptu
echo "$$"

echo "move processes to bg and save pid"
#option 1 - & will return pid, but waits for job to finish as well
#pid="(sleep 1 &)"
#option 2 - use $!
sleep 10 $
pid="$!"

echo "check bg jobs"
jobs

echo "wait for bg job to finish"
#wait <pid>
wait "$pid" && {
	echo "sleep job w/ pid $pid finished"
}

