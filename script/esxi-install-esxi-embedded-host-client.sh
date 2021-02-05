#!/bin/sh
# https://flings.vmware.com/esxi-embedded-host-client

# Install ESXi Embedded Hostclient on versions <= 6.5.x
os_ver=$(uname -r | awk -F. '{print $1$2}')

if [ "$os_ver" -le 65 ];
then
    esxcli network firewall ruleset set -e true -r httpClient
    esxcli software vib install -v http://download3.vmware.com/software/vmw-tools/esxui/esxui_signed.vib
fi
