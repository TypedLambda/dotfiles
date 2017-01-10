# TitleBar setting

case $TERM in
  xterm* | rxvt*| screen*)
    function set_running_app { printf "\e]1; $PWD:t:$(history $HISTCMD | cut -b7- ) \a" }
    function set_title_tab   {
      # vcs_info
      # Put the string "hostname::/full/directory/path" in the title bar:
      echo -ne "\e]2;$PWD\a"

      # Put the parentdir/currentdir in the tab
      echo -ne "\e]1;$PWD:h:t/$PWD:t\a"
    }
    ;;
  *)
    function set_runnung_app {}
    function set_title_tab {}
    ;;
esac

function preexec {
    # Note the date when the command started, in unix time.
    CMD_START_DATE=$(date +%s)
    # Store the command that we're running.
    CMD_NAME=$1
#   set_running_app 
}

function postexec { set_running_app }

function precmd {
    # Proceed only if we've ran a command in the current shell.
    if ! [[ -z $CMD_START_DATE ]]; then
        # Note current date in unix time
        CMD_END_DATE=$(date +%s)
        # Store the difference between the last command start date vs. current date.
        CMD_ELAPSED_TIME=$(($CMD_END_DATE - $CMD_START_DATE))
        # Store an arbitrary threshold, in seconds.
        CMD_NOTIFY_THRESHOLD=60

        if [[ $CMD_ELAPSED_TIME -gt $CMD_NOTIFY_THRESHOLD ]]; then
            # Beep or visual bell if the elapsed time (in seconds) is greater than threshold
            print -n '\a'
            # Send a notification
            notify-send 'Job finished' "\"$CMD_NAME\" has finished."
        fi
        CMD_START_DATE=""
        CMD_NAME=""
    fi
    set_title_tab
}

