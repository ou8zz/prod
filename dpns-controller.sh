#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/dpns-controller -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/dpns-controller dpns-controller=swr.cn-east-2.myhuaweicloud.com/yb7/dpns-controller:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/dpns-controller -o wide -n default
