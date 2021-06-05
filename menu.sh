#!/bin/bash

title="ShowSysInfos"
prompt="Pick an option: "
options=("disk_partition" "filesystem" "cpu_load" "mem_util" "quit")

echo="$title"
PS3="$prompt"
select opt in "${options[@]}"; do
    case "$REPLY" in
    1)
      fdisk -l
      ;;
    2)
      df -h
      ;;
    3)
      uptime
      ;;
    4)
      free -m
      ;;
    5)
      break
    esac
done
