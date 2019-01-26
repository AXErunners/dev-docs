#!/bin/bash
# Build static preview site that can be hosted on Github pages (https://pages.github.com/)
# Note: run init_env.sh first to prepare Ruby

export BITCOINORG_BUILD_TYPE=preview

# Update summaries.md
make manual-update-summaries-file

# Build preview with all plugins, but minimal language support
ENABLED_LANGS="" make preview
