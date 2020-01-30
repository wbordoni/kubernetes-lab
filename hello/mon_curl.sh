#!/bin/sh

# récupération de l'IP du service
IP=$(kubectl get services --namespace=labs | egrep "^hello.*" | awk ' { print $2 } ')

# interrogation du service par intervalles de 300 millisecondes
while true; do
	echo $(curl -s http://$IP/)
	sleep .3
done
