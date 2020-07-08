#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-api -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PRE -n default set image deployment/cailianpress-api cailianpress-api=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-api:2.2.59
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-api -o wide -n default

kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-featured-api -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PRE -n default set image deployment/cailianpress-featured-api cailianpress-featured-api=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-featured-api:0.1.13
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-featured-api -o wide -n default

kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-admin -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PRE -n default set image deployment/cailianpress-admin cailianpress-admin=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-admin:2.2.88
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-admin -o wide -n default

kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-cron -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PRE -n default set image deployment/cailianpress-cron cailianpress-cron=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-cron:0.6.40
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-cron -o wide -n default

kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-search -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PRE -n default set image deployment/cailianpress-search cailianpress-search=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-search:2.3.35
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-search -o wide -n default

kubectl --kubeconfig $KUBECONFIG_PRE get deployment/core-service -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PRE -n default set image deployment/core-service core-service=swr.cn-east-2.myhuaweicloud.com/yb7/core-service:0.6.302
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/core-service -o wide -n default

kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-admin-web -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PRE -n default set image deployment/cailianpress-admin-web cailianpress-admin-web=swr.cn-east-2.myhuaweicloud.com/yb7/cailianpress-admin-web:6.4.112
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/cailianpress-admin-web -o wide -n default

kubectl --kubeconfig $KUBECONFIG_PRE get deployment/go-mysql-elasticsearch -o wide -n default
kubectl --kubeconfig $KUBECONFIG_PRE -n default set image deployment/go-mysql-elasticsearch go-mysql-elasticsearch=swr.cn-east-2.myhuaweicloud.com/yb7/go-mysql-elasticsearch:0.0.24
kubectl --kubeconfig $KUBECONFIG_PRE get deployment/go-mysql-elasticsearch -o wide -n default