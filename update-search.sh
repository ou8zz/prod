kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-search -o wide
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-search cailianpress-search=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-search:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-search -o wide
