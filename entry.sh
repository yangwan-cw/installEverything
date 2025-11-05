#!/bin/bash

source ./scripts/check_enviroment.sh


# 设置默认安装路径
default_install_path="/opt/enviroment"
install_path=""

CreateEverything() {
  echo "# Starting process........................................#"
  echo "#                Ubuntu Development Setup                 #"
  echo "#   This script will help you install the necessary tools #"
  echo "#       like Java, Redis, MySQL, Go, C++, Git, Vim...     #"
  echo "###########################################################"
}

installEnd(){
  echo "All env have been installed  successfully"
}



# 设置工作路径
choose_install_path() {
  read -p "Enter your desired installation path (default: $default_install_path): " install_path
  install_path=${install_path:-$default_install_path} # 如果用户输入为空，则使用默认路径
  echo "Installation will proceed in: $install_path"
}



# 检查目录是否存在
check_directory_exists() {
  # 检查目录是否存在
  if [ -d "$install_path" ]; then
    echo "Directory '$install_path' exists."
  else
    echo "Directory '$install_path' does not exist."
    # 可选：如果目录不存在，创建该目录
    read -p "Do you want to create this directory? (y/n): " choice
    if [ "$choice" == "y" ]; then
      mkdir -p "$install_path"
      echo "Directory '$install_path' has been created."
    else
      echo "Directory was not created."
    fi
  fi
}








main() {
  # banner
  CreateEverything 
  
  # 默认路径和用户设置的路径
  choose_install_path

  # 检查目录
  check_directory_exists

  # 完成安装后提示
  installEnd
}

main
