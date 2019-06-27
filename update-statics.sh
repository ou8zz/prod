#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-statics -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-statics cailianpress-statics=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-statics:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-statics -o wide -n default
