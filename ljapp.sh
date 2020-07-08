#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljapp -o wide -n default
kubectl --kubeconfig $KUBECONFIG_HW -n default set image deployment/ljapp ljapp=swr.cn-east-2.myhuaweicloud.com/riskflow/ljapp:$1
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljapp -o wide -n default
