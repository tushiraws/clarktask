/usr/local/bin/kubectl apply -f redis-master-controller.yaml
/usr/local/bin/kubectl apply -f redis-master-service.yaml
/usr/local/bin/kubectl apply -f redis-slave-controller.yaml
/usr/local/bin/kubectl apply -f redis-slave-service.yaml
/usr/local/bin/kubectl apply -f guestbook-controller.yaml
/usr/local/bin/kubectl apply -f guestbook-service.yaml
/usr/local/bin/kubectl autoscale rc guestbook --min=1 --max=3 --cpu-percent=50
