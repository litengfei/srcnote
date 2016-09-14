#!/usr/bin/env bash

rm -rf platform_frameworks_base/media/tests
rm -rf platform_frameworks_base/core/tests
rm -rf platform_frameworks_base/tests
rm -rf platform_frameworks_base/core/res
rm -rf platform_frameworks_base/tools/preload/*.compiled
rm -rf platform_dalvik/hit/samples
rm -rf platform_frameworks_base/preloaded-classes
rm -rf platform_frameworks_base/samples
rm -rf platform_frameworks_base/packages/SystemUI/res
rm -rf platform_frameworks_base/api

#####find . -type d -name docs -exec du -h -d 0 {} \;
find . -type d -name res -exec rm -rf {} \;
find . -type d -name assets -exec rm -rf {} \;
find . -type d -name docs -exec rm -rf {} \;
find . -type d -name data -exec rm -rf {} \;
find . -type d -name test -exec rm -rf {} \;
find . -type d -name tests -exec rm -rf {} \;
find . -type d -name junit-tests -exec rm -rf {} \;
find . -type f -name *.compiled -exec rm -f {} \;
find . -type f -name NOTICE -exec rm -f {} \;
find . -type f -name README -exec rm -f {} \;
find . -type f -name README.txt -exec rm -f {} \;
find . -type f -name *.txt -exec rm -f {} \;
find . -type f -name *.html -exec rm -f {} \;
find . -type f -name *.htm -exec rm -f {} \;
find . -type f -name *.3gp -exec rm -f {} \;
find . -type f -name *.mp4 -exec rm -f {} \;
find . -type f -name *.wav -exec rm -f {} \;
find . -type f -name *.mp3 -exec rm -f {} \;
find . -type f -name .classpath -exec rm -f {} \;
find . -type f -name .project -exec rm -f {} \;
find . -type f -name *_LICENSE_* -exec rm -f {} \;
find . -type f -name *.hprof -exec rm -f {} \;







