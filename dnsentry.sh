mystr=`kubectl describe service guestbook | grep Ingress | cut -d : -f2`
mystring=$(echo $mystr | tr -d ' ')
sed -i "s/OLDDNS/$mystring/g" newdnsentry.json
aws route53 change-resource-record-sets --hosted-zone-id "Z2PWMWU43TX8LR" --change-batch=file://newdnsentry.json

