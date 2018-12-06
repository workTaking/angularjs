分支：
	master(主分支)
	development(副分支)

$ git init 创建仓库

$ git add filesname 提交文件（文件夹）到暂存区

$ rm file  删除文件

$ git commit -m "注释" 将缓存区内容添加到本地仓库

$ git reset --hard HEAD^ 将版本回退到上一个版本

$ git reset --hard 版本号前几（5）位   将版本跳转到指定版本

$ git status 查看状态

$ git log    查看提交

$ git log --pretty=oneline 一行

$ git log > filename 将会把版本信息生成文件
$ git log --pretty=oneline > filename 将会把版本信息生成文件


$ git diff  工作区与暂存区区别

git diff > patch patch是生成的文件名字

git diff --cached > patch //是将我们暂存区与版本库的差异做成补丁

git diff HEAD > patch //是将工作区与版本库的差异做成补丁

**：只要确定版本号就可以前进或者回退，但是回到旧版本之后，是看不到前面的版本的，
要把版本号输出记录下来

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






git GUI here


error:
	1.git diff [<option>] [<commit> [<commit>]] [--] [<path>...]
		
工作区：现在的文件
暂存区：$ git add file 
版本库：$ git commit -m "注释"	





