::
:: @file hyperv-backup-config.bat
:: @version v1.4
::
:: @url https://innovarew.appspot.com/
:: @author Innovarew <innovarew.solutions (at) gmail (dot) com>
:: @copyright (C) 2013 Innovarew Solutions. All Rights Reserved.
:: @license Proprietary and confidential
::     Unauthorized copying of this file, via any medium is strictly prohibited.
:: Contact us if you are interested in using our products and services.
::
:: Changelog:
::
:: [dd/mm/yyyy]        [author]
:: [brief description]
::
:: 21/01/2013        innovare.solutions
:: v1.0 Initial version
::

:: Example configuration of hyperv-backup (edit backuproot, backupmail)

:: Set full path where the backups will be stored (required)
set backuproot="."
:: Set the SSH user@host:/path for remote backups (optional)
set sshost="user@localhost:/path"
:: Set the email address to receive backup reports (optional)
set backupmail="backup@localhost"

set backupdate=%date:/=%
set backupdir=%backuproot%/%backupdate%
set backuplog=%backuproot%/hyperv-backup.log :: %computername%

:: Invoke hyperv-backup.exe to backup each host Hyper-V VMs to %backupdir%

:: HOST1 vm backup
%hypervbackupexe% backup HOST1 %backupdir% "vmname1 vmname2" %sshost%

:: HOST2 vm backup
::%hypervbackupexe% backup HOST2 %backupdir% "vmname1 vmname2" %sshost%

:: set the backup dirs to readonly to avoid backup modifications
:: attrib +r %backuproo%
attrib +r %backupdir%
