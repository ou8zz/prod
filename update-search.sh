kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-search -o wide
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-search cailianpress-search=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-search:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-search -o wide
