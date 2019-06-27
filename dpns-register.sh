#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/dpns-register -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/dpns-register dpns-register=swr.cn-east-2.myhuaweicloud.com/yb7/dpns-register:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/dpns-register -o wide -n default
