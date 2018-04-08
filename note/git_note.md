# Git安装和配置
```shell
sudo apt install git

git config --global user.name "xxx"
git config --global user.email "xxx@gmail.com"

git config --global push.default simple

vim ~/.gitconfig
git config --list #查看git配置

# 生成SHH密匙
cd ~/.ssh
ssh-keygen -t rsa -b 2048 -C "xxx@email.com"
```

# 拉取和提交
```shell
git init
git clone https://github.com/xxx/xxx.git
git clone git@github.com:xxx/xxx.git

git clone git@repo.gstianfu.com:simu/data_service
git clone git@repo.gstianfu.com:backend/projects/gezi.git ./

```

# log & diff
```shell
git log --pretty=oneline 文件名 # 显示修改历史
git show f76114d99 # 查看更改

git log --oneline | --raw

git diff
git diff 3dec0e8ea824902 76412c34a63b210

# 对比两个分支差异
git log dev ^master # dev有master无
git log master ^dev # master有dev无
git log master..dev # dev比master多提交了哪些
git log dev..master # master比dev多提交了哪些
git log dev...master # 查看不同
git log --left-right dev...master # 显示出提交是在哪个分支上
# diff usage
git help diff # 看EXAMPLES部分
git diff [filename] # working tree 和 staged
git diff --cached [filename] # staged(add后) 和 HEAD(commit) 差别
git diff HEAD
```

# workflow 工作流程
> working - add - commit - reset - checkout - push - fetch
```shell
1 git add xxx
2 git commit -m "udpate xxx"
3 git checkout -- xxx # index覆盖work
4 git reset -- xxx # 撤销commit

12 git commit -am "update xxx"
34 git checkout HEAD -- xxx # repo覆盖work

git commit --amend --no-edit
git commit --amend -m <msg>

```

# branch
```shell
# 查看
git branch -a|r
# 创建
git checkout -b new_branch
git checkout -b localname origin/remotename #拉取分支并建立映射关系
git fetch origin remotename:localname       #拉取分支不建立映射关系
# 切换
git checkout master
# 合并
git merge new_branch # 合并new_branch到当前分支
# 删除
git branch -d new_branch
# 本地分支与远程分支映射关系
git branch -vv # 查看
git branch -u origin/branchname # 建立映射关系
git branch --set-upstream-to origin/branchname # 建立映射关系
git branch --unset-upstream # 撤销映射关系

git pull origin xxx_branch
    git fetch
    git merge origin/xxx_branch

# feature or bugfix 功能和bug分支
命名
`feature/xxxx_20180302`
`bugfix/xxxx_20180302`
# 如果开发周期较长，最好迭代进行开发，不断的合并主分支保证主分支的更新可以及时的merge到开发分支中。
# 建议每天在开发分支执行：
git checkout feature/newuser_201510
git fetch
git merge origin/master

```

```
# 撤销和回退
```shell
3 git checkout -- xxx # index覆盖work
4 git reset -- xxx # 撤销commit
34 git checkout HEAD -- xxx # repo覆盖work
# 版本回退
git reset --hard 576dc08d199e31
# 服务器覆盖本地（撤销本地修改）
git fetch origin
git reset --hard origin/master
```

# 恢复撤销和回退
> 虽然Git会保留所有的历史记录，你可以随时回滚。使用Git的高级操作(如：reset, rebase 和 merge)，还是要小心点

```shell
git reset --hard b7057a9 # 回退到某次提交，之后的提交log将不可见
git reflog # 查看HEAD历史
git reset --hard 98abc5a # 恢复，假设98abc5a是最新的提交
```
所以总是可以找回之前的提交，除非已经被git当做垃圾处理掉了，一般是30天以后。

## 恢复git reset --hard origin/master 删除的文件
1. 未commit也未stash的改动没进到本地版本库里，reset了就找不回来了。
2. reset之前如果执行过git add 操作的话，执行 `git fsck --lost-found`，然后到.git/lost-found目录看有没有丢失的文件。
3. 如果已经commit到本地repo了：
```shell
1 git reflog # 找到最近提交的信息
2 git reset ID #定位到上一次commit (reset --hard之前)
    2.1 git status 显示文件处于删除状态
3 git checkout -- . # 恢复所有文件(或指定文件)
# 第2步同如下:
git checkout ID # 将 HEAD指向已删除提交的地址
git rebase HEAD master # 将master指向已删除地址。
# 这样操作后会创建一个临时的branch，checkout master时会提示保存此branch为新分支：
git branch <新分支名> 422e9ad
```

# Git历史版本穿梭
```shell
# 回滚
cat .git/HEAD
cat .git/refs/heads/master
git log --oneline
git reset --hard <commit_id>
# 撤销回滚
cat .git/logs/refs/heads/master
git reflog show master | head -4 #查看前四次log记录
git reset --hard master@{x}
git reset --hard <commit_id>
```

# git合并多个commit记录
本地临时的commit可能会很多，push时希望合并无用的commit记录。有以下两种方式:
方式一：
git rebase -i [分支名或commit_id] # git 会打开编辑器
修改每个commit记录需要持行的操作
界面上第一列是commit的持行命令，命令含义如下：
• pick：意思是要会执行这个 commit
• squash：将这一行的 commit 与上一个 commit 进行合并
• fixup：与 squash 相同，只是不会保留这行 commit 的提交 message 信息
保存退出即可
如果需要撤销修改：
git rebase –abort

方式二
git commit --fixup <commit> # 标记此次为上一commit的fix
git rebase -i --autosquash # 合并两个commit
git rebase -i --autosquash <commit>^

# rebase的使用场景
用来替代 merge
用来修改 commit 历史

# git删除文件：
```shell
git rm xxx # 删除不保留文件
git rm --cached xxx # 删除并保留文件
```

# git变更项目地址
```shell
git remote set-url origin git@192.168.6.70:res_dev_group/test.git
git remote -v
```

# git tag 使用
```shell
git tag  # 列出当前仓库的所有标签
git tag -l 'v0.1.*'  # 搜索符合当前模式的标签

git tag v0.2.1-light  # 创建轻量标签
git tag -a v0.2.1 -m '0.2.1版本'  # 创建附注标签

git checkout [tagname]  # 切换到标签
git show v0.2.1  # 查看标签版本信息

git tag -d v0.2.1  # 删除标签
git tag -a v0.2.1 9fbc3d0  # 补打标签

git push origin v0.1.2  # 将v0.1.2标签提交到git服务器
git push origin –tags  # 将本地所有标签一次性提交到git服务器
git tag  # 查看当前分支下的标签
```

# git设置关闭自动换行
```shell
git config --global core.autocrlf false
# 为了保证文件的换行符是以安全的方法，避免windows与unix的换行符混用的情况，最好也加上这么一句
git config --global core.safecrlf true
```

# .gitignore
```shell
# projects files
*.pyc
services.py
*.py[cod]

# sqlite files
*.db

# C extensions
*.so

# Other version control
.svn

# swap files
*.swp
*.orig

# temp files
**~
**#

# static dir
static

# Packages
*.egg
*.egg-info
dist
build
eggs
parts
bin
var
sdist
develop-eggs
.installed.cfg
lib
lib64
.venv
# Installer logs
pip-log.txt

# Unit test / coverage reports
.coverage
.tox
nosetests.xml

# Translations
*.mo

# Mr Developer
.mr.developer.cfg
.project
.pydevproject

# Project related
*migrations*
media
static
template
debug.sh
proj/local_settings.py
venv
debug/
src/
.idea/
env.local
boto.json
status_code.json
```

# 理解github的pull request
要为某个项目贡献代码，首先要Fork这个Repo到你的Github账号下，然后修改提交。
如果想合并到原Repo，需要在Github发起一个Pull Request，请求原Repo的所有者合并你的分支。



> 参考：
> http://www.runoob.com/manual/git-guide/
>