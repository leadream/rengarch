#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn export

# 进入生成的文件夹
cd gh-pages

git init
git add -A
git commit -m 'deploy'

# 发布到 GitHub
git push -f git@github.com:leadream/rengarch.git master:gh-pages

cd -