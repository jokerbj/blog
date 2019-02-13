#!/bin/bash
# GIT全局配置
git config user.name "jokerbj"
git config user.email "849185108@qq.com"
# 进入通过HEXO G遍历主题下的SOURCE目录，即CSS/FOND/JS，建立索引把主题文件生成到的PUBLIC中，即HTML，网页根目录
cd public
# 初始化GIT
git init
# 添加域名
echo 'hexo.jplove.top' > CANME
# 添加所有文件
git add .
# 提交
git commit -m "Travis CI Auto Builder at `date +"%Y-%m-%d %H:%M"`"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:master