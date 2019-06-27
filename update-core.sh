#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/core-service -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/core-service core-service=swr.cn-east-2.myhuaweicloud.com/yb7/core-service:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/core-service -o wide -n default
