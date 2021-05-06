#display descrive
sh descrive.sh

#input InstanceId
read -p "select InstanceId:" instanceid

aws ec2 stop-instances --instance-ids $instanceid
