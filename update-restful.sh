#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/core-restful -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/core-restful core-restful=swr.cn-east-2.myhuaweicloud.com/yb7/core-restful:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/core-restful -o wide -n default
