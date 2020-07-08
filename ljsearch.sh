#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljsearch -o wide -n default
kubectl --kubeconfig $KUBECONFIG_HW -n default set image deployment/ljsearch ljsearch=swr.cn-east-2.myhuaweicloud.com/riskflow/ljsearch:$1
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljsearch -o wide -n default
