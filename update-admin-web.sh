kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-admin-web -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-admin-web cailianpress-admin-web=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-admin-web:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-admin-web -o wide -n default
