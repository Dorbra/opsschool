#!/bin/bash
#add fix to exercise6-fix here
if [[ $# -lt 2 ]]
then
	echo "minimum number of arguments is 2, please pass more..."
  exit 1
fi

ARRAY=( $@ )
len=${#ARRAY[@]}
DESTFOLDER=${ARRAY[$len-1]}
SOURCES=${ARRAY[@]:0:$len-1}

SRCHOST=`hostname`
if [[ `hostname` == server1 ]] 
then 
	DESTHOST=server2
else
	DESTHOST=server1
    # adding server2 ssh-key to server1
	if [[ -f .ssh/id_rsa && -f .ssh/id_rsa.pub ]]; then
		ssh-keygen -N "" -f /home/vagrant/.ssh/id_rsa
		cp /home/vagrant/.ssh/id_rsa.pub /vagrant/server2pub.key
	fi
fi

scp -r $SOURCES vagrant@$DESTHOST:$DESTFOLDER 

TOTALBYTES=0
for file in  $SOURCES ; do
	SIZE = $(stat -c %s "$file");
	printf "current %d total %dn" "$SIZE" "$((TOTALBYTES += SIZE))"
done
#do
# 	let "`stat -c "%s"  $i` + $BCOUNT"
# done
echo $BYTESCOUNT