#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-payment -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-payment cailianpress-payment=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-payment:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-payment -o wide -n default
