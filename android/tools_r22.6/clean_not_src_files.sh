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
rm -rf platform_external_skia/expectations
rm -rf platform_external_skia/experimental
rm -rf platform_external_skia/platform_tools
rm -rf platform_external_skia/resources
rm -rf platform_external_skia/tests
rm -rf platform_external_skia/docs
rm -rf platform_external_skia/debugger
rm -rf platform_external_skia/bench
rm -rf platform_external_skia/tools
rm -rf platform_external_skia/gyp*
rm -rf platform_external_skia/A*
rm -rf platform_external_skia/C*
rm -rf platform_external_skia/D*
rm -rf platform_external_skia/L*
rm -rf platform_external_skia/O*
rm -rf platform_external_skia/R*
rm -rf platform_external_skia/samplecode
rm -rf platform_external_skia/Makefile
rm -rf platform_external_skia/SKP_VERSION
rm -rf platform_external_skia/codereview.settings
rm -rf platform_external_skia/make.*
rm -rf platform_external_skia/skia.gyp
rm -rf asset-studio/src/main/java/images
rm -rf templates/

#####find . -type d -name docs -exec du -h -d 0 {} \;
find . -type d -name "\.idea" -exec rm -rf {} \;
find . -name "*.iml" -exec rm -rf {} \;
find . -name "*.jar" -exec rm -rf {} \;
find . -name "*.png" -exec rm -rf {} \;
find . -name "*.jpg" -exec rm -rf {} \;
find . -name "*.jpg" -exec rm -rf {} \;
find . -name ".settings" -exec rm -rf {} \;
find . -type d -name "\.eclipse" -exec rm -rf {} \;
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







