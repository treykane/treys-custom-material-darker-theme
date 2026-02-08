# Trey's Material Darker Theme for Powerlevel10k
# Author: Trey Kane <trey@treykane.com>
# Inspired by Material UI and Material Darker themes
#
# Installation:
# 1. Install Powerlevel10k: https://github.com/romkatv/powerlevel10k#installation
# 2. Copy this file to ~/.p10k.zsh
# 3. Add to ~/.zshrc: source ~/.p10k.zsh
# 4. Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc

# Temporarily change options.
'builtin' 'local' '-a' 'p10k_config_opts'
[[ ! -o 'aliases'         ]] || p10k_config_opts+=('aliases')
[[ ! -o 'sh_glob'         ]] || p10k_config_opts+=('sh_glob')
[[ ! -o 'no_brace_expand' ]] || p10k_config_opts+=('no_brace_expand')
'builtin' 'setopt' 'no_aliases' 'no_sh_glob' 'brace_expand'

() {
  emulate -L zsh -o extended_glob

  # Unset all configuration options.
  unset -m '(POWERLEVEL9K_*|DEFAULT_USER)~POWERLEVEL9K_GITSTATUS_DIR'

  # Zsh >= 5.1 is required.
  autoload -Uz is-at-least && is-at-least 5.1 || return

  # Prompt colors - Material Darker palette
  # Blue: #82AAFF (111)
  # Green: #C3E88D (150)
  # Red: #f07178 (210)
  # Yellow: #FFCB6B (221)
  # Cyan: #89DDFF (117)
  # Gray: #848484 (102)
  # Foreground: #EEFFFF (255)

  # Instant prompt mode.
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=verbose

  # Basic style options
  typeset -g POWERLEVEL9K_MODE=nerdfont-complete
  typeset -g POWERLEVEL9K_ICON_PADDING=moderate

  # Prompt on separate lines
  typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
  typeset -g POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
  typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=''
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%{$fg_bold[white]%}❯ '
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX=''
  typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_SUFFIX=''
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX=''

  # Connect left and right prompts
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR='·'
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_BACKGROUND=''
  typeset -g POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_GAP_BACKGROUND=''
  if [[ $POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR != ' ' ]]; then
    typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_FOREGROUND=102
    typeset -g POWERLEVEL9K_EMPTY_LINE_LEFT_PROMPT_FIRST_SEGMENT_END_SYMBOL='%{%}'
    typeset -g POWERLEVEL9K_EMPTY_LINE_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL='%{%}'
  fi

  # Left prompt segments
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    os_icon
    dir
    vcs
    newline
    prompt_char
  )

  # Right prompt segments
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    status
    command_execution_time
    background_jobs
    time
  )

  # Basic style
  typeset -g POWERLEVEL9K_BACKGROUND=
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_{LEFT,RIGHT}_WHITESPACE=
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SUBSEGMENT_SEPARATOR=' '
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SEGMENT_SEPARATOR=

  # OS icon - Cyan
  typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=117
  typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=

  # Prompt character - Green on success, Red on error
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=150
  typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=210
  typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='❯'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_CONTENT_EXPANSION='❮'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_CONTENT_EXPANSION='V'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIOWR_CONTENT_EXPANSION='▶'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OVERWRITE_STATE=true
  typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=''
  typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=

  # Directory - Blue
  typeset -g POWERLEVEL9K_DIR_FOREGROUND=111
  typeset -g POWERLEVEL9K_DIR_BACKGROUND=
  typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=111
  typeset -g POWERLEVEL9K_DIR_ANCHOR_BOLD=true
  typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_unique
  typeset -g POWERLEVEL9K_SHORTEN_DELIMITER=
  typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=111
  typeset -g POWERLEVEL9K_DIR_ANCHOR_BOLD=true
  typeset -g POWERLEVEL9K_DIR_MAX_LENGTH=80
  typeset -g POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS=40
  typeset -g POWERLEVEL9K_DIR_MIN_COMMAND_COLUMNS_PCT=50
  typeset -g POWERLEVEL9K_DIR_HYPERLINK=false
  typeset -g POWERLEVEL9K_DIR_SHOW_WRITABLE=v3

  # Git status - Material Darker colors
  typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=150
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=117
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=221
  typeset -g POWERLEVEL9K_VCS_BACKGROUND=
  typeset -g POWERLEVEL9K_VCS_LOADING_FOREGROUND=102
  typeset -g POWERLEVEL9K_VCS_{STAGED,UNSTAGED,UNTRACKED,CONFLICTED,COMMITS_AHEAD,COMMITS_BEHIND}_MAX_NUM=-1

  # Git branch icon - Red
  typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

  typeset -g POWERLEVEL9K_VCS_UNSTAGED_ICON='!'
  typeset -g POWERLEVEL9K_VCS_STAGED_ICON='+'
  typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='⇣'
  typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='⇡'
  typeset -g POWERLEVEL9K_VCS_COMMIT_ICON='@'

  # Status - Red for errors
  typeset -g POWERLEVEL9K_STATUS_EXTENDED_STATES=true
  typeset -g POWERLEVEL9K_STATUS_OK=false
  typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND=150
  typeset -g POWERLEVEL9K_STATUS_OK_BACKGROUND=
  typeset -g POWERLEVEL9K_STATUS_OK_VISUAL_IDENTIFIER_EXPANSION='✔'
  typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=210
  typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND=
  typeset -g POWERLEVEL9K_STATUS_ERROR_VISUAL_IDENTIFIER_EXPANSION='✘'

  # Command execution time - Yellow
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=221
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT='d h m s'
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PREFIX='took '

  # Background jobs - Cyan
  typeset -g POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=117
  typeset -g POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=
  typeset -g POWERLEVEL9K_BACKGROUND_JOBS_VISUAL_IDENTIFIER_EXPANSION='⚙'

  # Time - Gray
  typeset -g POWERLEVEL9K_TIME_FOREGROUND=102
  typeset -g POWERLEVEL9K_TIME_BACKGROUND=
  typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S}'
  typeset -g POWERLEVEL9K_TIME_UPDATE_ON_COMMAND=false

  # Transient prompt
  typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=always
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=verbose

  # Hot reload
  typeset -g POWERLEVEL9K_DISABLE_HOT_RELOAD=false

  # Display default context (user@host) only when running over SSH or as root
  typeset -g POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=false
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=221
  typeset -g POWERLEVEL9K_CONTEXT_{REMOTE,REMOTE_SUDO}_FOREGROUND=221
  typeset -g POWERLEVEL9K_CONTEXT_FOREGROUND=221

  # Don't show context unless running with privileges or in SSH.
  typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_{CONTENT,VISUAL_IDENTIFIER}_EXPANSION=

  # Apply custom color overrides
  typeset -g POWERLEVEL9K_VCS_COMMITS_AHEAD_FOREGROUND=117
  typeset -g POWERLEVEL9K_VCS_COMMITS_BEHIND_FOREGROUND=117

  # Instant prompt mode.
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=verbose
  typeset -g POWERLEVEL9K_DISABLE_INSTANT_PROMPT=false

  (( ! $+functions[p10k] )) || p10k reload
}

# Tell `p10k configure` which file it should overwrite.
typeset -g POWERLEVEL9K_CONFIG_FILE=${${(%):-%x}:a}

(( ${#p10k_config_opts} )) && setopt ${p10k_config_opts[@]}
'builtin' 'unset' 'p10k_config_opts'
