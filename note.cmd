分支：
	master(主分支)
	development(副分支)

$ git init 创建仓库

$ git add filesname 提交文件（文件夹）到暂存区

$ git commit -m "注释" 将缓存区内容添加到本地仓库

$ git reset --hard HEAD^ 将版本回退到上一个版本

$ git reset --hard  版本号前几（5）位 将版本跳转到指定版本

$ git status 查看状态

$ git log    查看提交

$ git error 出现问题之后，找到.git 文件下的错误文件删除之后就可以了。
			.git 隐藏文件查找，找到父级文件夹，工具——》 文件夹选项——》 查看 ——》显示隐藏文件


查看分支：git branch

创建分支：git branch <name>

切换分支：git checkout <name>

创建+切换分支：git checkout -b <name>

合并某分支到当前分支：git merge <name>

删除分支：git branch -d <name>


$ git stash

添加远程库：
关联远程库:
$ git remote add origin https://github.com/workTaking/angularjs.git

把本内内容推送到远程库
$ git push -u origin master


		