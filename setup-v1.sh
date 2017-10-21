#!/bin/bash
set -e



############################################################################
#setting up git


git init
git config --global user.name "Jamil Akhtar"
#git config --global user.email "None"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=18000'
git config --global push.default simple


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"