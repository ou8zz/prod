kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-hudong -o wide
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-hudong cailianpress-hudong=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-hudong:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-hudong -o wide
