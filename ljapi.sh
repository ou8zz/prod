#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljapi -o wide -n default
kubectl --kubeconfig $KUBECONFIG_HW -n default set image deployment/ljapi ljapi=swr.cn-east-2.myhuaweicloud.com/riskflow/ljapi:$1
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljapi -o wide -n default
