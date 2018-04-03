### git
> repo.gstianfu.com
> ssh git@repo.gstianfu.com
> 直接从release切一个分支

```shell
> clone branch checkout[-b] pull fetch merge reset

# 常用
# init or clone
git init
git clone git@repo.gstianfu.com:simu/data_service
git clone git@repo.gstianfu.com:backend/projects/gezi.git ./

# branch
git branch -a/r
git checkout -b release origin/release # 拉取远程分支
git checkout -b feature/xxxx_20150902
git checkout -b bugfix/xxxx_20151002
git checkout master # 切换
git branch -d feature_x # 删除
git push origin <branch> # 推送分支
git merge <branch> # 合并分支到当前分支

git push origin master
git pull origin xxx_branch
    git fetch
    git merge origin/xxx_branch

# conflicts
git diff <source_branch> <target_branch>
git add <filename>

# 撤销本地改动
## 未 add
git checkout -- <filename>
git checkout . # 撤销所有

## 获取服务器最新版本，将本地主分支指向它
git fetch origin
git reset --hard origin/master

git remote add origin <server> # 连接未clone

# 查看有哪些子模块(submodule)
vim .git/config
git submodule update --init

# 查看本地分支与远程分支的映射关系
git branch -vv

# 直接从git创库安装
pip install -e git+https://github.com/aliyun-beta/aliyun-opensearch-python-sdk.git@0f215da6c0fbce86ea9a280885b5c506baf8dcc2#egg=opensearch
```

```shell
# 实用小贴士
# 内建的图形化 git：gitk
# 彩色的 git 输出：
git config color.ui true
# 显示历史记录时，每个提交的信息只显示一行：
git config format.pretty oneline
# 交互式添加文件到暂存区：
git add -i
```
### tmux

```
tmux -V # 查看版本
tmux new -s test -d  # 创建名字为test的session
tmux a -t test       # 进入session
ctrl+b " # 横向分屏
ctrl+b % # 纵向分屏
ctrl+b o # 分屏间切换
ctrl+b 方向键 # 分屏间切换
ctrl+b c # 新建窗口
ctrl+b , # 重命名窗口
ctrl+b n/p/数字键 # 切换窗口
ctrl.b w #以列表方式显示窗口
ctrl+b x # 删除窗口
ctrl+d # 退出session(session并未关闭，在后台运行)
tmux ls # 查看session
tmux a # 进入刚退出的session
tmux kill-window -t test # 删除session
```

### gezi

数据库连接在gezi/gezi/local_settings.py
数据库ip等在~/config/services.py

```shell
# 进入gezi环境
source ~/virtualenv/gezi/bin/activate
# 更新gscache
pip install -e git+git@repo.gstianfu.com:backend/libs/gscache.git#egg=gscache

# requirements.txt
(venv) pip freeze > requirements.txt
(venv) pip install -r requirements.txt
```
```shell

```

### win10 Pycharm 配置 conda虚拟环境报权限错误
> IOError: [Errno 13] Permission denied: u'C:\\ProgramData\\Anaconda2\\pkgs\\cache\\2116b818.json'

`$ C:\ProgramData\Anaconda2\Scripts\conda-script.py create -p E:/PY/conda_env27 python=2.7 -y`

尝试手动执行，以管理员身份运行 PowerShell
`conda create -n conda_env27 python=2.7`
会在Anaconda安装目录创建, 如：C:\ProgramData\Anaconda2\envs\conda_env27
在pycharm 的 terminal中激活
`activate conda_env27`
然后安装依赖:
`pip install -r requirements.txt`

```shell

```
```shell

```
```shell

```
```shell

```
