#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/core-restful -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/core-restful core-restful=registry.cn-beijing.aliyuncs.com/lanjing/core-restful:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/core-restful -o wide -n default
