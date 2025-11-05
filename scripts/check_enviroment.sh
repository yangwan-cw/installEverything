#!/bin/bash

# 显示系统环境信息
check_enviroment() {
  # 打印操作系统信息
  echo "Operating System: $(lsb_release -d | awk -F"\t" '{print $2}')"
  echo "Kernel Version: $(uname -r)"
  
  # 打印磁盘使用情况
  echo "Disk Usage:"
  df -h | grep -E '^/dev'

  # 打印内存使用情况
  echo "Memory Usage:"
  free -h
  
  # 打印当前系统负载
  echo "System Uptime:"
  uptime

  # 检查网络连接
  echo "Checking network connectivity..."
  if ping -q -c 1 -W 1 8.8.8.8 > /dev/null; then
    echo "Network is up."
  else
    echo "Network is down, please check your internet connection."
  fi

  # 检查是否有 sudo 权限
  if sudo -v &>/dev/null; then
    echo "Sudo permissions: Granted"
  else
    echo "Error: Sudo permissions are required to run this script."
    exit 1
  fi
}

check_enviroment
