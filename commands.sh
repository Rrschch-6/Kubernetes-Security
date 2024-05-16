kubectl get po -n kube-system
kubectl get --raw='/readyz?verbose' #test master node
kubeadm token create --print-join-command #getting join command
dpkg --get-selections | cut -f1 #list all the installed packages
kubectl describe pods
##########################################

kubectl get nodes #check the nodes
kubectl label node "your-node-name" node-role.kubernetes.io/worker=worker #label node
kubectl label node "your node-name" node-role.kubernetes.io/worker- #delete node label

###########################################

##deploy metrics

kubectl apply -f /manifests/metrics-server.yaml
kubectl get po -n kube-system #check cpu & memmory usage of nodes
kubectl top pods -n kube-system #check cpu & memmory usage of pods

###########################################

##Access from local workstation
cat /etc/kubernetes/admin.conf #coppy content and make a config file in local .kube folder
~/.kube/config

###########################################
