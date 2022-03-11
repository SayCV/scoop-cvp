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

base_dir=/usr/synopsys
tool=vcs
version=N-2017.12
installer_version=v3.5

[ -d /usr/tmp ] || sudo mkdir /usr/tmp
[ -f /usr/tmp/.flexlm ] || sudo touch /usr/tmp/.flexlm
[ -d ${base_dir} ] || sudo mkdir -p ${base_dir}
sudo chown $USER:$USER ${base_dir}

chmod +x ./SynopsysInstaller_${installer_version}.run
./SynopsysInstaller_${installer_version}.run -dir ${base_dir}/installer_${installer_version}
