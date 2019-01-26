#!/bin/bash
# Note: run init_env.sh first to prepare Ruby

# See docs/setting-up-your-environment.md for more info
export BITCOINORG_BUILD_TYPE=preview

# Update summaries.md
make manual-update-summaries-file

# Build preview with minimal plugins
ENABLED_PLUGINS="glossary" ENABLED_LANGS="" make preview

## Fast build and tests, takes less than 50 seconds
## Some tests may fail in fast mode; use -i to continue despite them
#ENABLED_PLUGINS="" ENABLED_LANGS="" make -i valid
