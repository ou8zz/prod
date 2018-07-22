kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-hudong -o wide
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-hudong cailianpress-hudong=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-hudong:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-hudong -o wide
