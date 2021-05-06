#display descrive
sh descrive.sh

#input InstanceId
read -p "select InstanceId:" instanceid

#display all ec2
aws ec2 start-instances --instance-ids $instanceid
