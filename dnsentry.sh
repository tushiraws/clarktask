mystr=`/usr/local/bin/kubectl describe service guestbook | grep Ingress | cut -d : -f2`
mystring=$(echo $mystr | tr -d ' ')
echo "§§§§§§§§§§§§§§§§§§§$!§"!REWFDS"
echo $mystring
echo "§§§§§§§§§§§§§§§§§§§$!§"!REWFDS"
echo $mystr
echo "§§§§§§§§§§§§§§§§§§§$!§"!REWFDS"
sed -i "s/OLDDNS/$mystring/g" newdnsentry1.json
aws route53 change-resource-record-sets --hosted-zone-id "Z2PWMWU43TX8LR" --change-batch=file://newdnsentry1.json
