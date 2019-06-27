#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-cron -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-cron cailianpress-cron=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-cron:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-cron -o wide -n default
