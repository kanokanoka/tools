#aws ec2 describe-instances --instance-ids i-08225c1ac6dd41e02 |grep PublicDnsName
aws ec2 describe-instances | jq '.Reservations[].Instances[] | {InstanceId, PrivateIpAddress, InstanceName: (.Tags[] | select(.Key=="Name").Value), State, PublicDnsName}'
