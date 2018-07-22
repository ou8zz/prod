#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-wap -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-wap cailianpress-wap=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-wap:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-wap -o wide -n default
