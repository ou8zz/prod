#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljwap -o wide -n default
kubectl --kubeconfig $KUBECONFIG_HW -n default set image deployment/ljwap ljwap=swr.cn-east-2.myhuaweicloud.com/riskflow/ljwap:$1
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljwap -o wide -n default
