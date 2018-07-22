#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/core-service -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/core-service core-service=registry.cn-beijing.aliyuncs.com/lanjing/core-service:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/core-service -o wide -n default
