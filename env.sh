#! /usr/local/bin/bash
CURRENT_COMMAND=""
COMMANDS="status init start stop erease quit"
SCRIPT_PATH="./script"

if [ ! -z "$1" ] ; then
  CURRENT_COMMAND="$1"
else 
  select COMMAND in $COMMANDS
  do
    CURRENT_COMMAND=$COMMAND
    break
  done
fi

case $CURRENT_COMMAND in
  status | init | start | stop | erease) COMMAND=$SCRIPT_PATH/$CURRENT_COMMAND.sh;;
  quit) exit 0;;
  *) COMMAND=$SCRIPT_PATH/usage.sh;;
esac

# 执行命令
source $COMMAND