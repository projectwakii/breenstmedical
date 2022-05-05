#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'www.breenstmedical.com' > CNAME

git init
git add -A
git commit -m 'New Deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:projectwakii/projectwakii.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:projectwakii/breenstmedical.git master:gh-pages

cd -
