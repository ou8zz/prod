#!/bin/bash
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljcms -o wide -n default
kubectl --kubeconfig $KUBECONFIG_HW -n default set image deployment/ljcms ljcms=swr.cn-east-2.myhuaweicloud.com/riskflow/ljcms:$1
kubectl --kubeconfig $KUBECONFIG_HW get deployment/ljcms -o wide -n default
