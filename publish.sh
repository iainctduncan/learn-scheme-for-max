#!/bin/bash

echo "rendering and pushing"
make html
cp -rp _build/html/* docs/
git add .
git commit -m "publishing"
git push
