#!/bin/bash

git checkout $0
mkdir .pomerge_cache/

for fn in `cat dotpo-tools-config`; do
    cp $fn .pomerge_cache/$fn
done

git checkout $1

for fn in `cat dotpo-tools-config`; do
    echo "Merging $fn..."
    php $DOTPO_MERGER_PATH/merger.php ./$fn .pomerge_cache/$fn ./$fn
done

rm -rf .pomerge_cache