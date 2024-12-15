#!/usr/bin/env bash

# idea for responsive status bar from https://coderwall.com/p/trgyrq/make-your-tmux-status-bar-responsive

right_status_bar() {
    local width="$1"
    local hide_date hide_uptime
    local date uptime time hostname

    [[ "${width}" -lt "64" ]]  && hide_date=true
    [[ "${width}" -lt "52" ]]  && hide_uptime=true

    if [[ ! "${hide_date}" ]]; then
        date=" $(date +'%Y-%m-%d') "
    fi
    if [[ ! "${hide_uptime}" ]]; then
        uptime=" 󰜎 $(uptime | cut --fields=4-5 --delimiter=' ' | cut --fields=1 --delimiter=',') "
    fi

    time=" $(date +'%H:%M:%S') "
    hostname=$("${DOTFILES_DIR}/lib/prompt-tools.sh" --get-hostname)

    echo -n "#[fg=${COL_STATUS_DATETIME_BG},bg=${COL_STATUS_BG},nobold,noitalics,nounderscore]#[fg=${COL_STATUS_DATETIME_FG},bg=${COL_STATUS_DATETIME_BG}]${uptime}"
    echo -n "#[fg=${COL_STATUS_DATETIME_FG},bg=${COL_STATUS_DATETIME_BG},nobold,noitalics,nounderscore]#[fg=${COL_STATUS_DATETIME_FG},bg=${COL_STATUS_DATETIME_BG}]${date}"
    echo -n "#[fg=${COL_STATUS_DATETIME_FG},bg=${COL_STATUS_DATETIME_BG},nobold,noitalics,nounderscore]#[fg=${COL_STATUS_DATETIME_FG},bg=${COL_STATUS_DATETIME_BG}] ${time} "
    echo -n "#[fg=${COL_STATUS_HOSTNAME_BG},bg=${COL_STATUS_DATETIME_BG},nobold,noitalics,nounderscore]#[fg=${COL_STATUS_HOSTNAME_FG},bg=${COL_STATUS_HOSTNAME_BG}] ${hostname} "
}

right_status_bar "$1"
