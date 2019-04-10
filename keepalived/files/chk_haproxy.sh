#!/bin/bash
. $HOME/.bash_profile
nginx_root_num=$(ps -ef|grep -v $0|grep root|grep -v grep|grep "/usr/sbin/haproxy-systemd-wrapper"|wc -l)
nginx_user_num=$(ps -ef|grep -v $0|grep -v root|grep -v grep|grep "/usr/sbin/haproxy"|wc -l)
if [ $nginx_root_num -eq 1 ] && [ $nginx_user_num -ge 2 ]
then
	exit 0
else
	exit 1
fi
