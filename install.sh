#!/usr/bin/env bash

cat extension_list | while read extension || [[ -n $extension ]];
do
  extension=$(echo $extension | sed 's/#.*//')
  code --install-extension $extension --force
done