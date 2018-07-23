#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/dpns-controller -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/dpns-controller dpns-controller=registry.cn-beijing.aliyuncs.com/lanjing/dpns-controller:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/dpns-controller -o wide -n default
