## This repository is now deprecated and archived
If you want the feature this repository provides, please consider using [CrowdSec](https://doc.crowdsec.net/).

Unlike this ghetto Bash script, this program is written by actually-competent people (i.e. not me) in a reasonable language (Go).

## IP-Block-Script
A (or perhaps a few?) Bash scripts to update and block a known list of IPs that were abused.

### update.sh
A script that downloads a list of known abused IPs from a provider.

Currently uses `AbuseIPDB` as source.

### apply.sh
A script that updates the system firewall to block incoming traffic from the list of IPs.

Currently uses `iptables` as firewall service.
