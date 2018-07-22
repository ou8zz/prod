#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-vod -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-vod cailianpress-vod=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-vod:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-vod -o wide -n default
