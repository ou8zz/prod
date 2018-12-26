#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/h5quotes -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/h5quotes h5quotes=registry.cn-beijing.aliyuncs.com/lanjing/h5quotes:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/h5quotes -o wide -n default
