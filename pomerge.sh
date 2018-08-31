#!/bin/bash

git checkout $1
mkdir .pomerge_cache/

for fn in `cat dotpo-tools-config`; do
    mkdir -p `dirname ./.pomerge_cache/$fn`
    cp ./$fn ./.pomerge_cache/$fn
done

git checkout $2

for fn in `cat dotpo-tools-config`; do
    echo "Merging $fn..."
    php $DOTPO_MERGER_PATH/merger.php ./$fn .pomerge_cache/$fn ./$fn
done

rm -rf .pomerge_cache