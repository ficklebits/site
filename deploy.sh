#!/bin/bash

set -e

echo "===> Generating site..."
echo ""
jekyll build

echo ""
echo ""
echo "===> Deploying..."
echo ""
rsync -avz _site/* ficklebits.com:/srv/www/ficklebits.com/

echo "===> Done!"

