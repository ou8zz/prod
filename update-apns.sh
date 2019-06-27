#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/apns-producer -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/apns-producer apns-producer=swr.cn-east-2.myhuaweicloud.com/yb7/apns-producer:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/apns-producer -o wide -n default