#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljlive -o wide -n default
kubectl --kubeconfig $KUBECONFIG_HW -n default set image deployment/ljlive ljlive=swr.cn-east-2.myhuaweicloud.com/riskflow/ljlive:$1
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljlive -o wide -n default
