#!/bin/bash

# 检查LOCALVERSION是否为空（首次运行时）
if [ -z "$LOCALVERSION" ]; then
    echo "首次运行，没有本地版本，将触发构建"
    echo "SYNCED=0" >> $GITHUB_ENV
    exit 0
fi

if [[ "$LOCALVERSION" == "$REMOTEVERSION" ]]; then
    echo "SYNCED=1" >> $GITHUB_ENV
else
    echo "SYNCED=0" >> $GITHUB_ENV
fi 