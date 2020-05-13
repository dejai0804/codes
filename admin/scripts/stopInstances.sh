#!/bin/bash

AWS_PROFILE=aakinlofa
hosts=i-0a98a5e7c35fd0fc5

for host in ${hosts[@]};
do
   echo "..............................stopping $host ................................."	
   aws ec2 stop-instances --instance-ids $host --profile $AWS_PROFILE
done



