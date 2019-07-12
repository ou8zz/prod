#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/go-mysql-elasticsearch -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PROD -n default set image deployment/go-mysql-elasticsearch go-mysql-elasticsearch=swr.cn-east-2.myhuaweicloud.com/yb7/go-mysql-elasticsearch:$1
kubectl --kubeconfig $KUBECONFIG_PROD get deployment/go-mysql-elasticsearch -o wide -n default
