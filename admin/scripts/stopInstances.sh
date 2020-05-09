hosts=(
  "i-01d6e6ed4cbeef584"
  )

for host in ${hosts[@]};
do
   echo "..............................stopping $host ................................."	
   aws ec2 stop-instances --instance-ids $host --profile $AWS_PROFILE
done



