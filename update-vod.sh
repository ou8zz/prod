#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-vod -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-vod cailianpress-vod=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-vod:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-vod -o wide -n default
