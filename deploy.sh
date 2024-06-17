#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 构建
npm run build

# 检查是否生成了 dist 目录
if [ ! -d "dist" ]; then
  echo "构建失败，dist 目录不存在"
  exit 1
fi

# 进入构建文件夹
cd dist

# 如果你是要部署到自定义域名
echo 'judangbaihuo.cn' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果你是要部署到 https://USERNAME.github.io/REPO
git push -f git@github.com:Ironbasin/text.git master:gh-pages

cd -
