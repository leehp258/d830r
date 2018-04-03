git备忘

### 初始化和克隆
git init
git clone git@repo.gstianfu.com:simu/data_service
git clone git@repo.gstianfu.com:backend/projects/gezi.git ./

### 分支
```shell
# 查看
git branch
git branch -a
git branch -r

# 拉取远程分支并创建本地分支
## 方法一 : 拉取并建立映射关系 [推荐]
git checkout -b localname origin/remotename
## 方法二 : 拉取但不建立映射关系
git fetch origin remotename:localname

```
### 本地分支与远程分支建立映射关系
> 这样git pull或git push时就不必每次都要指定从哪个分支到哪个分支了。
```shell
# 查看本地分支与远程分支的映射关系
git branch -vv

# 建立当前分支与远程分支的映射关系
git branch -u origin/branchname
或者
git branch --set-upstream-to origin/branchname

# 撤销本地分支与远程分支的映射关系
git branch --unset-upstream


```
### 对比两个分支差异
git log dev ^master # dev有master无
git log master ^dev # master有dev无
git log master..dev # dev比master多提交了哪些
git log dev..master # master比dev多提交了哪些
git log dev...master # 查看不同
git log --left-right dev...master # 显示出提交是在哪个分支上

### diff
git help diff # 看EXAMPLES部分
git diff [filename] # working tree 和 staged
git diff --cached [filename] # staged(add后) 和 HEAD(commit) 差别
git diff HEAD

### 完整流程
> working - add - commit - reset - checkout - push - fetch
```shell
vim xxx
git add xxx
git commit -m 'update xxx'
git reset -- xxx
git checkout -- xxx

git commit -am 'update xxx'
git checkout HEAD -- xxx

# remote reset local
git fetch origin
git reset --hard origin/master
```

```shell
git pull origin xxx_branch
    git fetch
    git merge origin/xxx_branch
```
```shell
# feature or bugfix
命名
`feature/xxxx_20150902`
`bugfix/xxxx_20151002`

如果feature开发周期比较长，在开发过程中可以不断的合并主分支或者发布分支的内容，以保证主分支的更新可以及时的merge到开发分支中和及时的冲突解决，那么在完成开发分支merge回到主分支时可以限度的减少分支差异造成的影响。
```shell
#比如主分支为tifenblue，当前开发分支为feature/newuser_201510
#建议每天在feature/newuser_201510分支上执行（即已经git checkout feature/newuser_201510）
git fetch
git merge origin/tifenblue
```
#### git submodule
```shell
# 增加一个submodule
cd PARENT_REPO
git submodule add git@abcde.com/SUB_REPO.git ./SUB_REPO
git submodule update --init
git commit .gitmodules -m "Added submodule as ./SUB_REPO"
```
```shell
# 更新全部的submodule
cd PARENT_REPO
git pull
git submodule update --init [--force]
# 如需覆盖submodule所映射目录，需指定 --force 参数。
```
```shell
# 在submodule中修改，并且在parent repo中采用这个修改
cd PARENT_REPO
cd SUB_REPO
git commit -m "changes in submodule"
git push
cd ..
git add SUB_REPO
git commit -m "adopt changes in submodule"
```
```shell
# clone PARENT REPO时包括submodule
git clone --recursive git@abcde.com/PARENT_REPO.git
```
```shell
# 删除submodule
git rm -f SUB_REPO
git commit -m "remove submodule"
除上述操作外，还需要手动删除.git/config中，[submodule "SUB_MODULE"]标签及其内容。
```
**注意**

* 对于parent repo的一个commit来说（比如backend/projects/gezi），子模块只是一个commit hash，如果在子模块中发生了新commit，对于parent repo来说，都是一次改动。
* 如果已经commit了parent repo，但是在子模块中没有push对应的commit，那么在别的地方pull下来时候会出现错误，因为parent repo的版本中对应的子模块的commit并不存在。

```shell
# git submodule的建议工作流
# 下面的例子中，主分支为master，涉及的submodule为user
# 创建开发分支
git submodule update -- user
git checkout -b feature/abc_2015
cd user
git checkout -b feature/abc_2015

# 开发完成
cd user
git add ...
git commit ... && git push ...
cd ..
git add user
git add ... # 主分支自己的其他修改
git commit ...

# 合并开发分支
cd user
git checkout master
git merge feature/abc_2015; git commit ...
git push ...
cd ..
git checkout master
git merge feature/abc_2015
git add user
git commit ...
git push ..
```



### 参考
> http://www.runoob.com/manual/git-guide/



## workflow
add to index
commit add to localrepo
push commit to remoterepo

checkout from add
reset from commit(localrepo)
reset from remoterepo (--hard origin/master)

#恢复git reset --hard origin/master 删除的文件
1. 未commit也未stash的改动没进到本地版本库里，reset了就找不回来了。
2. reset之前如果执行过git add 操作的话，执行 git fsck --lost-found，然后到.git/lost-found目录下找找看有没有你丢失的文件。
3. 如果已经commit到本地repo了：
```shell
1 git reflog # 找到最近提交的信息
2 git reset ID #定位到上一次commit (reset --hard之前)
    2.1 git status 显示文件处于删除状态
3 git checkout -- . # 恢复所有文件(或指定文件)
第2步同如下:
git checkout ID # 将 HEAD指向已删除提交的地址
git rebase HEAD master # 将master指向已删除地址。

这样操作后会创建一个临时的branch，checkout master时会提示保存此branch为新分支：
git branch <新分支名> 422e9ad


```

## 恢复 git reset -hard 的误操作
有时候使用Git工作得小心翼翼，特别是涉及到一些高级操作，例如 reset, rebase 和 merge。甚至一些很小的操作，例如删除一个分支，我都担心数据丢失。

之前，我在做一些大动作（rebasing）之前，我总是备份整个版本库，以防万一。

直到最近我才发现git的历史记录是不可修改的，也就是说你不能更改任何已经发生的事情。你做的任何操作都只是在原来的操作上修改。也就是说，即使你删除了一个分支，修改了一个提交，或者强制重置，你仍然可以回滚这些操作。

让我们来看一些例子：

$ git init
$ touch foo.txt
$ git add foo.txt
$ git commit -m "initial commit"

$ echo 'new data' >> foo.txt
$ git commit -a -m "more stuff added to foo"

你现在看git的历史记录，你可以看到两次提交：
$ git log
* 98abc5a (HEAD, master) more stuff added to foo
* b7057a9 initial commit

现在让我们来重置回第一次提交的状态：
$ git reset --hard b7057a9
$ git log
* b7057a9 (HEAD, master) initial commit

这看起来我们是丢掉了我们第二次的提交，没有办法找回来了。但是 reflog 就是用来解决这个问题的。简单的说，它会记录所有HEAD的历史，也就是说当你做 reset，checkout等操作的时候，这些操作会被记录在reflog中。

$ git reflog
b7057a9 HEAD@{0}: reset: moving to b7057a9
98abc5a HEAD@{1}: commit: more stuff added to foo
b7057a9 HEAD@{2}: commit (initial): initial commit

所以，我们要找回我们第二commit，只需要做如下操作：
$ git reset --hard 98abc5a

再来看一下 git 记录：
$ git log
* 98abc5a (HEAD, master) more stuff added to foo
* b7057a9 initial commit

所以，如果你因为reset等操作丢失一个提交的时候，你总是可以把它找回来。除非你的操作已经被git当做垃圾处理掉了，一般是30天以后。

## git合并多个commit记录
当我们在用git开发时，总会临时通过commit来保存代码，当我们修改完代码需要push时，就会发现有许多无用的commit记录。此时，就需要把一些不需要commit信息清除掉，git提供了以下两种方式来合并commit记录。
一、界面方式
1、进入commit记录编辑界面
git rebase -i [分支名或commit的hash值]
这时 git 会打开编辑器，你会看到当前分支上的最新commit记录，以及一些指引提示

2、修改对每个commit记录需要持行的操作
界面上第一列是commit的持行命令，命令含义如下：
• pick：意思是要会执行这个 commit
• squash：将这一行的 commit 与上一个 commit 进行合并
• fixup：与 squash 相同，只是不会保留这行 commit 的提交 message 信息

3、保存退出
:wq

退出后就会发现log记录发生了改变

4、撤销修改
git rebase –abort

二、命令方式
1、自动标记这一次的 commit 为上一个 commit 的 fix
$ git commit –fixup <commit>
2、自动组织合并两个 commit
$ git rebase -i –autosquash

