#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-web2 -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-web2 cailianpress-web2=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-web:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-web2 -o wide -n default
