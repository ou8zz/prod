#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-admin -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-admin cailianpress-admin=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-admin:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-admin -o wide -n default
