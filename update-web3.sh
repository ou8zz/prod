#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cls-web -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cls-web cls-web=swr.cn-east-2.myhuaweicloud.com/yb7/cls-web:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cls-web -o wide -n default
