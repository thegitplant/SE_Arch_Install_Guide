#!/bin/bash

# Remove cryptboot entry from crypttab
sed -i '/cryptboot/d' /etc/crypttab

cd /boot/efikeys/

# Rename the db.* files (generated by `cryptboot`) to DB.* (files used by `sbupdate`)
for i in db.*; do
     mv -i "${i}" "${i/db/DB}"
done