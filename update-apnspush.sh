#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/apns-producer-push -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/apns-producer-push apns-producer-push=registry.cn-beijing.aliyuncs.com/lanjing/apns-producer-push:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/apns-producer-push -o wide -n default