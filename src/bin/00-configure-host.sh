#!/bin/bash

set -e

# RCP Databse requesres ru_RU.UTF-8 locale. Generate it:

echo "Generating locales..."
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

echo "ru_RU.UTF-8 UTF-8" >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
