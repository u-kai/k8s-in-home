#!/bin/zsh

kubectl port-forward -n monitoring service/prometheus-server 9090:80