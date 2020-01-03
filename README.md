### hyperv-backup: A handy backup for Hyper-V virtual machines.

Perform the following steps to setup hyperv-backup:

- Configure the `%backuproot%` backup destination at [hyperv-backup-config.bat](hyperv-backup-config.bat)
- Configure the `%hostvms%` VMs to backup at [hyperv-backup-config.bat](hyperv-backup-config.bat)
- Check the Hyper-V VM backup works invoking: [hyperv-backup.bat](hyperv-backup.bat)
- Once the configuration is working schedule a daily task: `hyperv-backup.bat daily`

#### Usage

~~~
C:\hyperv-backup> hyperv-backup.bat usage

usage: hyperv-backup.bat [usage|daily|disable|status]
- usage: show hyperv-backup.bat usage
- daily: schedule daily hyperv-backup.bat task
- disable: delete hyperv-backup.bat daily schedule task
- status: show hyperv-backup.bat status
- otherwise, run the hyperv-backup

usage: hyperv-backup ComputerName /path/to/backup vmnames # @version v2.5
@copyright #Innovarew (c) Copyright 2018. All rights reserved.
~~~
