#!/bin/bash

################################################################################
# Banner 显示模块
# 用途: 显示美化的欢迎横幅和信息
# 使用: source scripts/utils/banner.sh
################################################################################



# 加载颜色模块
# 如果 colors.sh 还未加载，则加载它
if [ -z "$COLOR_RESET" ]; then
    BANNER_SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    source "${BANNER_SCRIPT_DIR}/colors.sh"
fi

################################################################################
# 显示主横幅
# 用途: 在脚本开始时显示欢迎信息
################################################################################
show_banner() {
    clear
    echo -e "${COLOR_BOLD_CYAN}"
    cat << "EOF"
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║                    Ubuntu 22.04 开发环境自动安装脚本                         ║
║                   Ubuntu 22.04 Development Environment Setup                 ║
║                                                                              ║
║                              Version: 1.0.0                                  ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
EOF
    echo -e "${COLOR_RESET}"
    echo ""
}


################################################################################
# 显示安装完成横幅
# 用途: 在所有安装完成后显示
################################################################################
show_completion_banner() {
    echo ""
    echo -e "${COLOR_BOLD_GREEN}"
    cat << "EOF"
╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║                          ✓ 安装完成 Installation Complete                    ║
║                                                                              ║
║                   所有开发工具已成功安装到您的系统中                         ║
║                  All development tools have been installed                   ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝
EOF
    echo -e "${COLOR_RESET}"
    echo ""
}


################################################################################
# 显示错误横幅
# 用途: 显示错误信息
# 参数: $1 - 错误消息
################################################################################
show_error_banner() {
    local message="$1"
    echo ""
    echo -e "${BG_RED}${COLOR_BOLD_WHITE}                                                                              ${COLOR_RESET}"
    echo -e "${BG_RED}${COLOR_BOLD_WHITE}  ✗ ERROR: ${message} ${COLOR_RESET}"
    echo -e "${BG_RED}${COLOR_BOLD_WHITE}                                                                              ${COLOR_RESET}"
    echo ""
}

show_error_log(){
    local message="$1"
    echo ""
    echo ${message}
    echo ""
  }

################################################################################
# 显示系统信息横幅
# 用途: 显示系统环境信息
################################################################################
show_system_info_banner() {
    echo -e "${COLOR_BOLD_CYAN}系统环境信息:${COLOR_RESET}"
    echo ""
}

################################################################################
# 显示警告横幅
# 用途: 显示重要警告信息
# 参数: $1 - 警告消息
################################################################################
show_warning_banner() {
    local message="$1"
    echo ""
    echo -e "${BG_YELLOW}${COLOR_BOLD_RED}                                                                              ${COLOR_RESET}"
    echo -e "${BG_YELLOW}${COLOR_BOLD_RED}  ⚠ WARNING: ${message}${COLOR_RESET}"
    echo -e "${BG_YELLOW}${COLOR_BOLD_RED}                                                                              ${COLOR_RESET}"
    echo ""
}



################################################################################
# 显示工具安装横幅
# 用途: 在安装每个工具前显示
# 参数: $1 - 工具名称
################################################################################
show_tool_banner() {
    local tool_name="$1"
    echo ""
    log_separator
    echo -e "${COLOR_BOLD_MAGENTA}>>> 正在安装: ${tool_name}${COLOR_RESET}"
    log_separator
    echo ""
}


################################################################################
# 显示工具列表
# 用途: 显示将要安装的工具清单
################################################################################
show_tools_list() {
    echo -e "${COLOR_BOLD_YELLOW}本脚本将安装以下开发工具:${COLOR_RESET}"
    echo ""
    echo -e "${COLOR_GREEN}  ✓ GCC/G++        - C/C++ 编译器${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Java (OpenJDK) - Java 开发环境${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Python 3       - Python 开发环境${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Go             - Go 语言环境${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Rust           - Rust 语言环境${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Node.js        - JavaScript 运行时${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ NVM            - Node 版本管理器${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Docker         - 容器化平台${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ MySQL          - 关系型数据库${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Redis          - 内存数据库${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Jenkins        - CI/CD 工具${COLOR_RESET}"
    echo -e "${COLOR_GREEN}  ✓ Neovim         - 现代化文本编辑器${COLOR_RESET}"
    echo ""
}

