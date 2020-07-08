#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cls-es -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cls-es cls-es=swr.cn-east-2.myhuaweicloud.com/yb7/cls-es:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cls-es -o wide -n default
