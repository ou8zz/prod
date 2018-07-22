#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-api -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-api cailianpress-api=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-api:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-api -o wide -n default
