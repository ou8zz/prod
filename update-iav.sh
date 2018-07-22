#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/in-app-views -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/in-app-views in-app-views=registry.cn-beijing.aliyuncs.com/lanjing/in-app-views:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/in-app-views -o wide -n default
