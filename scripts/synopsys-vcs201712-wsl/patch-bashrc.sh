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

cp -rf ${PWD}/.synopsys-vcs201712.bashrc ~/.synopsys-vcs201712.bashrc

grep -qxF '###--> CVP.BASHRC' ~/.bashrc || ( echo -e '\n';echo 'if [ -f ~/.synopsys-vcs201712.bashrc ]; then';echo '    . ~/.synopsys-vcs201712.bashrc';echo 'fi';echo -e '\n' ) >> ~/.bashrc
