#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/h5quotes -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/h5quotes h5quotes=swr.cn-east-2.myhuaweicloud.com/yb7/h5quotes:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/h5quotes -o wide -n default
