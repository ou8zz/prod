kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-admin-web -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-admin-web cailianpress-admin-web=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-admin-web:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-admin-web -o wide -n default
