#!/bin/bash

for fn in `cat dotpo-tools-config`; do
    git checkout --ours $fn
done