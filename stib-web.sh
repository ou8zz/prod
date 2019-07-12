#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/stib-cailianpress-web -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/stib-cailianpress-web stib-cailianpress-web=swr.cn-east-2.myhuaweicloud.com/yb7/stib-cailianpress-web:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/stib-cailianpress-web -o wide -n default
