#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-credits-mall -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-credits-mall cailianpress-credits-mall=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-credits-mall:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-credits-mall -o wide -n default