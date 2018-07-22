#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/apns-producer -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/apns-producer apns-producer=registry.cn-beijing.aliyuncs.com/lanjing/apns-producer:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/apns-producer -o wide -n default