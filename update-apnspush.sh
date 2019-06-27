#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/apns-producer-push -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/apns-producer-push apns-producer-push=swr.cn-east-2.myhuaweicloud.com/yb7/apns-producer-push:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/apns-producer-push -o wide -n default