#!/bin/sh

mac="";
count=0;
int="en0";

for i in {1..12}; do

rand=$(( ( RANDOM % 15 )  + 1 ));

if (( count % 2 == 0 && count != 0)); then
	mac+=":";
fi

if [ $rand -eq 10 ]; then 
	mac+='a';
elif [ $rand -eq 11 ]; then
	mac+='b';
elif [ $rand -eq 12 ]; then
        mac+='c';
elif [ $rand -eq 13 ]; then
        mac+='d';
elif [ $rand -eq 14 ]; then
        mac+='e';
elif [ $rand -eq 15 ]; then
        mac+='f';
else
	mac+=$rand;
fi

((count++));

done

sudo ifconfig "$int" ether "$mac";
echo "Mac address for $int changed to $mac";
