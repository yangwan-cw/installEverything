#!/bin/bash

################################################################################
# 颜色定义模块
# 用途: 为终端输出提供颜色支持
# 使用: source scripts/utils/colors.sh
################################################################################

# 文本颜色
export COLOR_RED='\033[0;31m'
export COLOR_GREEN='\033[0;32m'
export COLOR_YELLOW='\033[0;33m'
export COLOR_BLUE='\033[0;34m'
export COLOR_MAGENTA='\033[0;35m'
export COLOR_CYAN='\033[0;36m'
export COLOR_WHITE='\033[0;37m'

# 粗体颜色
export COLOR_BOLD_RED='\033[1;31m'
export COLOR_BOLD_GREEN='\033[1;32m'
export COLOR_BOLD_YELLOW='\033[1;33m'
export COLOR_BOLD_BLUE='\033[1;34m'
export COLOR_BOLD_MAGENTA='\033[1;35m'
export COLOR_BOLD_CYAN='\033[1;36m'
export COLOR_BOLD_WHITE='\033[1;37m'

# 背景颜色
export BG_RED='\033[41m'
export BG_GREEN='\033[42m'
export BG_YELLOW='\033[43m'
export BG_BLUE='\033[44m'
export BG_MAGENTA='\033[45m'
export BG_CYAN='\033[46m'
export BG_WHITE='\033[47m'
#!/bin/bash

################################################################################
# 颜色定义模块
# 用途: 为终端输出提供颜色支持
# 使用: source scripts/utils/colors.sh
################################################################################

# 文本颜色
export COLOR_RED='\033[0;31m'
export COLOR_GREEN='\033[0;32m'
export COLOR_YELLOW='\033[0;33m'
export COLOR_BLUE='\033[0;34m'
export COLOR_MAGENTA='\033[0;35m'
export COLOR_CYAN='\033[0;36m'
export COLOR_WHITE='\033[0;37m'

# 粗体颜色
export COLOR_BOLD_RED='\033[1;31m'
export COLOR_BOLD_GREEN='\033[1;32m'
export COLOR_BOLD_YELLOW='\033[1;33m'
export COLOR_BOLD_BLUE='\033[1;34m'
export COLOR_BOLD_MAGENTA='\033[1;35m'
export COLOR_BOLD_CYAN='\033[1;36m'
export COLOR_BOLD_WHITE='\033[1;37m'

# 背景颜色
export BG_RED='\033[41m'
export BG_GREEN='\033[42m'
export BG_YELLOW='\033[43m'
export BG_BLUE='\033[44m'
export BG_MAGENTA='\033[45m'
export BG_CYAN='\033[46m'
export BG_WHITE='\033[47m'


# 重置颜色
export COLOR_RESET='\033[0m'

################################################################################
# 颜色输出辅助函数
################################################################################

# 红色输出 (错误)
print_red() {
    echo -e "${COLOR_RED}$1${COLOR_RESET}"
}
# 绿色输出 (成功)
print_green() {
    echo -e "${COLOR_GREEN}$1${COLOR_RESET}"
}

# 黄色输出 (警告)
print_yellow() {
    echo -e "${COLOR_YELLOW}$1${COLOR_RESET}"
}

# 蓝色输出 (信息)
print_blue() {
    echo -e "${COLOR_BLUE}$1${COLOR_RESET}"
}

# 青色输出 (提示)
print_cyan() {
    echo -e "${COLOR_CYAN}$1${COLOR_RESET}"
}

# 粗体绿色输出 (重要成功信息)
print_bold_green() {
    echo -e "${COLOR_BOLD_GREEN}$1${COLOR_RESET}"
}

# 粗体红色输出 (重要错误信息)
print_bold_red() {
    echo -e "${COLOR_BOLD_RED}$1${COLOR_RESET}"
}

# 粗体黄色输出 (重要警告信息)
print_bold_yellow() {
    echo -e "${COLOR_BOLD_YELLOW}$1${COLOR_RESET}"
}

# 粗体蓝色输出 (重要信息)
print_bold_blue() {
    echo -e "${COLOR_BOLD_BLUE}$1${COLOR_RESET}"
}

