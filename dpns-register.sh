#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/dpns-register -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/dpns-register dpns-register=registry.cn-beijing.aliyuncs.com/lanjing/dpns-register:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/dpns-register -o wide -n default
