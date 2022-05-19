#!/bin/bash

kubectl describe secret -n kubernetes-dashboard $(kubectl get secret -n kubernetes-dashboard |grep  kubernetes-dashboard-token | awk '{print $1}') |grep token | awk '{print $2}'

