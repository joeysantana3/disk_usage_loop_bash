# for i in {1..500}
# do
#     du -h -d1 -m ./ | sort -h
#     echo '--------------------------------------------------------------------'
#     echo $i
#     sleep 1
# done

#!/bin/bash
formatted_old='1'
for i in {1..500}
do
    start=$(du -hs -m ./)
    formatted_new=$(echo $start | tr -d ' ./')
    if (( $formatted_new > $formatted_old )); then
    	echo $formatted_new
	else
    	echo '.'
	fi
	formatted_old=$formatted_new
    sleep 1
done