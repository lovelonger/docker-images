#!/bin/bash

cd `dirname $0`

# Install modules
for m in os scm zsh jdk7 maven mysql php phpmyadmin probe ice; do
    if [ -d ${m} ]; then
        echo -e "\n---- Install module ${m} ----"
        cd ${m}
        [ -d fs ] && cp -a fs/* /
        [ -f install.sh ] && sh install.sh
        cd ../
    fi
done

# Cleanup
rm -rf /tmp/*
yum clean all
rm -rf /var/cache/yum/x86_64/7/*