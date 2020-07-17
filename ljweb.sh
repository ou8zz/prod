#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljweb -o wide -n default
kubectl --kubeconfig $KUBECONFIG_HW -n default set image deployment/ljweb ljweb=swr.cn-east-2.myhuaweicloud.com/riskflow/ljweb:$1
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljweb -o wide -n default
