#!/bin/sh

if [ -z "$1" ]
then
    HADOOP_JOB="/opt/hadoop/hadoop-examples-1.2.0.1.3.0.0-107.jar pi 10 10"
else
    HADOOP_JOB="$@"
fi

echo "127.0.0.1 `hostname`" >> /etc/hosts
/opt/hadoop/bin/hadoop namenode -format
/opt/hadoop/bin/hadoop namenode &
/opt/hadoop/bin/hadoop datanode &
/opt/hadoop/bin/hadoop jobtracker &
/opt/hadoop/bin/hadoop tasktracker &
/opt/hadoop/bin/hadoop secondarynamenode &
sleep 10
/job.sh $HADOOP_JOB
