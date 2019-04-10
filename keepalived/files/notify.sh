#!/bin/bash
. $HOME/.bash_profile
function master()
{
	touch /tmp/change_master
}
function backup()
{
	touch /tmp/change_backup
}
function fault()
{
	touch /tmp/change_fault
}
$1 
