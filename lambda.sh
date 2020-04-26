#!/bin/sh
for (( i=1; $i <= 10000; i++ ))
do
	curl https://tnalmj53d8.execute-api.us-east-1.amazonaws.com/default/hellotest
	echo "l'éxécution " $i "de la fonction a durée: "
	curl -s -o /dev/null -w "%{time_total}\n"   https://tnalmj53d8.execute-api.us-east-1.amazonaws.com/default/hellotest
	sleep 0.1
done
