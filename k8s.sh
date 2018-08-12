echo "Creating 3 node K8s Cluster in AWS Default region as set in AWS CLI"
echo "Enter the DNS Subdomain :::: "
read dns_sub
echo "Enter S3 Bucket Name:::: "
read s3_state
/usr/local/bin/kops  create cluster --name=$dns_sub --state=$s3_state --zones=us-east-2a --node-count=2 --node-size=t2.micro --master-size=t2.micro --dns-zone=$dns_sub
/usr/local/bin/kops update cluster $dns_sub --yes --state=$s3_state
