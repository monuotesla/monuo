# monuo
git config --global user.email "3486397661@qq.com" #设置全局 Git 用户邮箱
git config --global user.name "monuotesla" #设置 Git 的用户名
git config --global --list #查看全部全局配置
git clone https://github.com/monuotesla/monuo.git
###上传
git init #初始化 Git 仓库，在当前目录创建一个新的 .git 目录
git add . #将当前目录下的所有修改过的文件和新文件添加到暂存区，. 表示当前目录
git status #检查提交状态
git commit -m “提交信息“ #提交这些更改到您的本地仓库，显示本次提交备注
git status #检查提交状态
git remote add origin https://github.com/haixiagu/xxx.git #设置远程仓库
git remote -v #检查当前的远程仓库配置
git remote set-url origin https://github.com/haixiagu/xxx.git #更新远程仓库 URL
git push -u origin main #将您的本地更改推送到远程仓库
123456