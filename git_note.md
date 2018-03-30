git备忘

### 初始化和克隆
git init
git clone git@repo.xxxianfu.com:simu/data_service
git clone git@repo.xxxianfu.com:backend/projects/gezi.git ./

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
