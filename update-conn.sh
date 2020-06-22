#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cls-conn -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cls-conn cls-conn=swr.cn-east-2.myhuaweicloud.com/yb7/cls-conn:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cls-conn -o wide -n default
