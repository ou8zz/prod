#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-featured-api -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-featured-api cailianpress-featured-api=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-featured-api:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-featured-api -o wide -n default
