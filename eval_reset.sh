#!/bin/bash
# 获取当前登录的用户名
CURRENT_USER=$(whoami)
# 定义要删除的路径，使用当前用户替换路径中的用户名部分
TARGET_DIR="/Users/${CURRENT_USER}/Library/Application Support/JetBrains/IntelliJIdea2021.2/eval"
# 检查目标文件夹是否存在
if [ -d "$TARGET_DIR" ]; then
    echo "删除文件夹: $TARGET_DIR"
    rm -rf "$TARGET_DIR"
    if [ $? -eq 0 ]; then
        echo "文件夹已成功删除"
    else
        echo "删除文件夹时出错"
    fi
else
    echo "文件夹不存在: $TARGET_DIR"
fi