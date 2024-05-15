kubectl get po -n kube-system
kubectl get --raw='/readyz?verbose' #test master node
kubeadm token create --print-join-command #getting join command
