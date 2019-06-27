#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-api -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-api cailianpress-api=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-api:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-api -o wide -n default
