# Trey's Material Darker Theme for Oh-My-Zsh
# Author: Trey Kane <trey@treykane.com>
# Inspired by Material UI and Material Darker themes
#
# This theme uses the same color palette as the VS Code/Cursor and Zed themes:
# - Background: #212121, #1a1a1a
# - Foreground: #EEFFFF
# - Blue: #82AAFF
# - Green: #C3E88D
# - Red: #f07178
# - Yellow: #FFCB6B
# - Cyan: #89DDFF
# - Gray: #848484

# Color definitions using ANSI 256-color codes
# These approximate the hex colors from the Material Darker theme
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local user_host='%{$fg[cyan]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg_bold[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)'
local time_stamp='%{$fg[magenta]%}%*%{$reset_color%}'

# Main prompt
PROMPT="${ret_status} ${current_dir} ${git_branch}
%{$fg_bold[white]%}$ %{$reset_color%}"

# Right prompt with optional timestamp
RPROMPT="${time_stamp}"

# Git prompt settings
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
