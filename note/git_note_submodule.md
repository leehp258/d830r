# git submodule 子模块
> 管理公共代码库。子模块允许你将一个 Git仓库当作另外一个Git仓库的子目录
## 示例
```shell
git submodule add git://github.com/soberh/ui-libs.git src/main/webapp/ui-libs
# .gitmodules, .git/config
git submodule
git submodule init
git submodule update
git submodule update --init
```
## 创建
git submodule add git://github.com/chneukirchen/rack.git rack
git status
```shell
# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#      new file:   .gitmodules
#      new file:   rack
#
```
增加和修改了如下文件
1. vim .gitmodules
```shell
[submodule "rack"]
    path = rack
    url = git://github.com/chneukirchen/rack.git
```
2. vim .git/config
3. 创建了rack文件夹

git diff --cached rack
```shell
diff --git a/rack b/rack
new file mode 160000
index 0000000..08d709f
--- /dev/null
+++ b/rack
@@ -0,0 +1 @@
+Subproject commit 08d709f78b8c5b0fbeb7821e37fa53e69afcf433
```

## 克隆带子模块的项目
git submodule init
git submodule update
----- or -------
git submodule update --init
git submodule update --init --recursive

# 如需覆盖submodule所映射目录，需指定 --force 参数。
git submodule update --init [--force]

## 将已存在的目录变为子模块
git rm -r rack
git submodule add git@github.com:schacon/rack.git rack
注意：切换到其它分支会报错，必须先移除rack，再切分支，再移回rack目录或重新update
mv rack /tmp/
git checkout branch_xxx
git submodule update
----- or --------
mv /tmp/rack .

## 删除子模块
1. git rm --cached src/main/webapp/ui-libs
2. vim .gitmodules # 删除相关节点
3. vim .git/config # 删除相关节点
4. 手动删除子模块残留的目录

## 在submodule中修改，并且在parent repo中采用这个修改
```shell
cd PARENT_REPO
cd SUB_REPO
git commit -m "changes in submodule"
git push
cd ..
git add SUB_REPO
git commit -m "adopt changes in submodule"
```

## clone PARENT REPO时包括submodule
```shell
git clone --recursive git@abcde.com/PARENT_REPO.git
```

**注意**

* 对于PARENT_REPO的一个commit来说，子模块只是一个commit hash，如果在子模块进行了新commit，对于PARENT_REPO来说，都是一次改动。
* 如果已经commit了PARENT_REPO，但是在子模块中没有push对应的commit，那么在别的地方pull下来时候会出现错误，因为PARENT_REPO的版本中对应的子模块的commit并不存在。

## git submodule的建议工作流
```shell
# 如：主分支为master，子模块为subm
git submodule update -- subm
git checkout -b branch_xxx
cd subm
git checkout -b branch_xxx
# 开发中........ Done！
cd subm
git add ...
git commit ...
git push ...
cd ..
git add subm
git add other...
git commit ...

# 合并开发分支
cd subm
git checkout master
git merge branch_xxx;
git commit ...
git push ...
cd ..
git checkout master
git merge branch_xxx
git add subm
git commit ...
git push ..
```
# git deploy-archive
## git deploy-archive的安装
```shell
# git deploy-archvie需要安装，在linux下：
sudo curl -o `git --exec-path`/git-deploy-archive "https://raw.githubusercontent.com/socrateslee/git-deploy-archive/master/git-deploy-archive.sh"
sudo chmod +x `git --exec-path`/git-deploy-archive

# windows下的git-bash中（mingw64），可以尝试使用如下命令安装：
curl -o /mingw64/libexec/git-core/git-deploy-archive "https://raw.githubusercontent.com/socrateslee/git-deploy-archive/master/git-deploy-archive.sh"
chmod +x /mingw64/libexec/git-core/git-deploy-archive
```
## 使用
global_conf 统一存放在下面的repo中，任何修改必须从这个repo中完成
```git@repo.xxx.com:common/global_conf```

在其它项目中引用
```shell
# 需要在其它工程中，创建.git-deploy-archive文件(可以考虑放在工程repo的根目录中)，内容如下：
# 全部工程通用的 global_conf
git@repo.xxx.com:common/global_conf master global_conf
# git@repo.xxx.com:common/global_conf master global_conf ./
## 注意./global_conf相对于.git-deploy-archive文件所在的目录存放的路径。

# 需要更新global_conf到最新版本时，在.git-deploy-archive文件所在的目录，通过以下命令来完成
git deploy-archive
```

