#!/bin/sh
CMD="/opt/hadoop/bin/hadoop jar $@"
echo $CMD
eval $CMD
