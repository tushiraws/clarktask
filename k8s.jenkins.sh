echo "Creating 3 node K8s Cluster in AWS Default region as set in AWS CLI"
echo "Enter the DNS Subdomain :::: "
dns_sub="k8s.tushierpruthi.de"
echo "Enter S3 Bucket Name:::: "
s3_state="s3://tushierk8s"
/usr/local/bin/kops  create cluster --name=$dns_sub --state=$s3_state --zones=us-east-2a --node-count=2 --node-size=t2.micro --master-size=t2.micro --dns-zone=$dns_sub
if [ $? ] 
then
  /usr/local/bin/kops update cluster $dns_sub --yes --state=$s3_state
fi
