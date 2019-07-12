#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-payment-v2 -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-payment-v2 cailianpress-payment-v2=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-payment-v2:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-payment-v2 -o wide -n default
