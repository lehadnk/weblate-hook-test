#!/bin/bash

git checkout $0
mkdir .pomerge_cache/
cp -R i18n .pomerge_cache/i18n
git checkout $1
php /Users/lehadnk/work/bitrewards/pomerge/merger.php ./i18n/ru_RU/LC_MESSAGES/admin.po .pomerge_cache/i18n/ru_RU/LC_MESSAGES/admin.po output.po
rm -rf .pomerge_cache