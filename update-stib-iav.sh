#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/stib-in-app-views -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/stib-in-app-views stib-in-app-views=swr.cn-east-2.myhuaweicloud.com/yb7/stib-in-app-views:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/stib-in-app-views -o wide -n default
