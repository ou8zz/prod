#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cls-sync -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cls-sync cls-sync=swr.cn-east-2.myhuaweicloud.com/yb7/cls-sync:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cls-sync -o wide -n default
