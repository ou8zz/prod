#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-featured-api -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-featured-api cailianpress-featured-api=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-featured-api:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-featured-api -o wide -n default
