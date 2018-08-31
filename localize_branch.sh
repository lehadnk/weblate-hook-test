#!/bin/bash
docker exec \
-it \
-u weblate \
-e PROJECT_NAME="test" \
-e BRANCH="$1" \
-e SLUG="$1" \
-e REPO="git@github.com:lehadnk/weblate-hook-test.git" \
-e FILE_MASK="i18n/*/LC_MESSAGES/admin.po" \
weblate_weblate_1 sh /root/weblate-addons/run_script.sh