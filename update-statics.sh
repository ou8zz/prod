#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-statics -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/cailianpress-statics cailianpress-statics=registry.cn-beijing.aliyuncs.com/lanjing/cailianpress-statics:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/cailianpress-statics -o wide -n default
