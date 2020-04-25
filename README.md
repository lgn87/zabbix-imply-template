# Imply Zabbix template
Template for monitoring various Imply and Druid services via web checks

Currently supported: broker, coordinator, historical, middle manager, overlord, pivot, router.

### Requirements

```
curl
jq
```
## Usage

- Copy contents from `scripts` directory to `/etc/zabbix/scripts` and make scripts executable.
- Edit scripts and set `USER` and `PASSWORD` variables.
- Copy contents from `userparameter` directory to `/etc/zabbix/zabbix_agentd.d` 
- Import *.xml templates into Zabbix
- In each template under Macros, set `{$IMPLY_USER}` and `{$IMPLY_PASSWORD}` for web checks



#
###### Under development

