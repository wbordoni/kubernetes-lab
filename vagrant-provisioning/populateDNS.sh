#!/bin/bash

cat >/etc/resolv.conf<<EOF
search m2i.form
nameserver 8.8.8.8
nameserver 10.0.2.3
EOF

for i in `seq 1 4`
do
scp /etc/resolv.conf kworker$i:/etc/resolv.conf
done
