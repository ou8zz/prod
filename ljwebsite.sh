#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_HW get deployment/lj-website -o wide -n default
kubectl --kubeconfig $KUBECONFIG_HW -n default set image deployment/lj-website lj-website=swr.cn-east-2.myhuaweicloud.com/riskflow/lj-website:$1
kubectl --kubeconfig $KUBECONFIG_HW get deployment/lj-website -o wide -n default
