#! /bin/bash
#
# =====
# SPDX-License-Identifier: (GPL-2.0+ OR MIT):
# 
# !!! THIS IS NOT GUARANTEED TO WORK !!!
# 
# Copyright (c) 2018-2022, SayCV
# =====
# 

[ -d /usr/tmp ] || sudo mkdir /usr/tmp
[ -f /usr/tmp/.flexlm ] || sudo touch /usr/tmp/.flexlm
[ -d /usr/synopsys ] || sudo mkdir -p /usr/synopsys
sudo chown $USER:$USER /usr/synopsys

chmod +x SynopsysInstaller_v3.5.run
./SynopsysInstaller_v3.5.run -d /usr/synopsys/installer35
