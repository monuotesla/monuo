
#!/bin/bash
git add . #将当前目录下的所有修改过的文件和新文件添加到暂存区，. 表示当前目录
git status #检查提交状态
git commit -m “提交信息“ #
git status #检查提交状态
git push -u origin main #将您的本地更改推送到远程仓库