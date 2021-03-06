Zabbix Slack AlertScript
========================


About
-----
This is a Bash script that uses the custom alert script functionality within [Zabbix](http://www.zabbix.com/) along with the incoming web-hook feature of [Slack](https://slack.com/).

#### Versions
This works with Zabbix 1.8.x or greater - including 2.2, 2.4 and 3.x!

Installation
------------

### The zabbix-slack-script

This [`zabbix-slack-script.sh`](https://github.com/lalkrishnak/zabbix-hub/zabbix-slack-script.sh) script needs to be placed in the `AlertScriptsPath` directory that is specified within the Zabbix servers' configuration file (`zabbix_server.conf`) and must be executable by the user running the zabbix_server binary (usually "zabbix") on the Zabbix server:

	[root@zabbix ~]# grep AlertScriptsPath /etc/zabbix/zabbix_server.conf
	### Option: AlertScriptsPath
	AlertScriptsPath=/usr/local/share/zabbix/alertscripts

	[root@zabbix ~]# ls -lh /usr/local/share/zabbix/alertscripts/zabbix-slack-script.sh
	-rwxr-xr-x 1 root root 1.4K Dec 27 13:48 /usr/local/share/zabbix/alertscripts/zabbix-slack-script.sh

If you do change `AlertScriptsPath` (or any other values) within `zabbix_server.conf`, a restart of the Zabbix server software is required.

Zabbix Sendmail Script
========================

About
-----
This is a Bash script that uses the custom alert script functionality within [Zabbix](http://www.zabbix.com/) along with the $(which mail) command feature.	

Installation
------------

Place the script in the AlertScriptPath directly and must be executable by the user running the zabbix_server binary on the zabbix server.

	$ chmod +x /usr/local/share/zabbix/alertscripts/zabbix-sendmail

Zabbix Server Install
========================

About
-----
Role that contain the playbooks to install [Zabbix](http://www.zabbix.com/) server on a Linux node along with its components.

Installation
------------

Place the zabbix-install role directory inside your default roles path. Replace the zabbix host details inside the main.yaml playbook and execute the below command.

	$ ansible-playbook main.yaml
