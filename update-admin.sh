#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-admin -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-admin cailianpress-admin=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-admin:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-admin -o wide -n default
