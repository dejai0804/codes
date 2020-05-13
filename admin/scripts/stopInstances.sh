
hosts=$InstanceIds

for host in ${hosts[@]};
do
   echo "..............................stopping $host ................................."	
   aws ec2 stop-instances --instance-ids $host --profile $AWS_PROFILE
done



