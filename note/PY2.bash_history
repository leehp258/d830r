ls
exit
sudo ls
exit
sudo ls
exit
ls
cat /etc/ssh/sshd_config
chkconfig sshd on
sudo update-rc.d ssh defaults
exit
netstat -an
sudo vim /etc/ssh/sshd_config
apt-get install openssh-server
sudo apt-get install openssh-server
sudo apt-get install chkconfig
cd /etc/rc0.d/
ls
exit
netstat -na
sudo service start ssh
sudo service ssh start
netstat -na
sudo update-rc.d ssh defaults
cd /etc/init
ls
cat ssh.conf
sudo  update-rc.d ssh enable
exit
netstat
netstat -na
exit
netstat -na
update-rc.d --help
update-rc.d ssh defaults
cat /etc/init.d/ssh
cat /etc/init/ssh.conf
sudo vim /etc/ssh/sshd_config
cat /var/log/bootstrap.log
cd /var/log/
ls
cat dmesg
sudo cat dmesg
cat dpkg.log
ls
cat lastlog
cat alternatives.log
ls
exit
netstat -na
ls
locate sshd
cd /etc/
ls
cd ssh
ls
emacs sshd_config
sudo vim ../bash.bashrc
exit
netstat -a
sudo passwd ubuntu
ls
echo
locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_ALL=
echo
exit
cd code/testWebpack/
ls
webpack
ls
cat package.json
sudo npm install -g coffee-script
sudo npm install -g
ls /usr/local/lib/node_modules/
ls
cat package.json
vi package.json
ls /usr/local/lib/node_modules/
ls /usr/local/lib/node_modules/demo/
ls /usr/local/lib/node_modules/demo/node_modules/
cd /
cd /usr/local/lib/node_modules/demo/node_modules/
ls
cd file-loader/
ls
cat index.js
cd ..
ls
cd ..
ls
rm -rf demo
sudo rm -rf demo
cd
ls
cd code/testWebpack/
ls
cat package.json
sudo npm install -g jade-loader
sudo npm install -g jade
sudo npm install -g js-beautify json-loader script-loader url-loader image-loader babel-core babel-loader
ls /usr/local/lib/node_modules/demo/node_modules/
ls /usr/local/lib/node_modules/
cat package.json
sudo npm install -g stylus stylus-loader
cat package.json
webpack
ls
webpack js/pageA.js js/pageA.test.js
webpack js/pageA.js --output js/pageA.test.js
emacs ls
ls
mv webpack.config.js webpack.config
mv webpack.config.js webpack.con
mv webpack.config webpack.conf
ls
webpack js/pageA.js --output js/pageA.test.js
ls
cd
ls
cd /tmp
ssh-keygen -t rsa
cd
ls
cd .ssh/
ls
emacs id_rsa.pub
vi id_rsa.pub
ls
mv id_rsa.pub vmop.pub
cat vmop.pub
vi /etc/bash.bashrc
sudo vi /etc/bash.bashrc
echo --------
ifconfig
sudo lsof -i:22
sudo netstat -na
sudo apt-get install xfonts-wqy
exit
export
locale
echo
cat /etc/default/locale
locale -a
sudo locale-gen en_US.UTF-8
sudo locale-gen zh_CN.UTF-8
locale -a
cat /etc/default/locale
which locale-gen
cat /usr/sbin/locale-gen
exit
ls
cd synced/
ls
cat /etc/group
sudo vi /etc/group
ls
cd code/
ls
cd ..
cd shared/
ls
ls -lh
cat /etc/gropu
cat /etc/group
sudo useradd -G vboxsf ubuntu
sudo vi /etc/group
sudo useradd -G vboxsf ubuntu
sudo usermod -aG vboxsf $(whoami)
sudo vi /etc/gropu
sudo vi /etc/group
exit
cd shared/
ls
ls -lh
cd ../synced/
cd backend/gezi/
ls
source ~/virtualenv/gezi/bin/activate
ls
ping 192.168.56.110
ls
cd gezi/
ls
cp local_settings.py lichun_settings.py
emacs lichun_settings.py
ls
cd ..
python manage.py syncdb
cd gezi/
cp lichun_settings.py local_settings.py
ls
cd ..
pythonm manage.py shell
python manage.py shell
python manage.py
python manage.py check
ping 192.168.56.110
mysql -uroot -proot -h192.168.56.110
telnet 192.168.56.110 3306
sudo apt-get install telnet
telnet 192.168.56.110 330
python manage.py check
python manage.py
python manage.py sqlflush --help
python manage.py dbshell
python manage.py dbshell --help
python manage.py createcachetable --help
python manage.py sqlflush
python manage.py flush --help
python manage.py migrate --run-syncdb
ls
git remote -v
git remote --help
ls
git remote remove origin
git remote -v
ls
cd ..
git remote add origin git@repo.yuexue.com:backend/projects/gezi.git
cd gezi/
python manage.py runserver 0.0.0.0:9101
exit
vi /etc/ssh/sshd_config
sudo vi /etc/ssh/sshd_config
vi /etc/ssh/sshd_config
EXIT
exit
git status
git add web.py
git commit -m "adjust to_rest_json for code, msg, result structure"
git config user.name lichun
git push
echo > __init__.py
mkdir views.py
cd views.py/
echo > __init__.py
echo > api.py
cd ..
cp ../user/models.py ./
mkdir ops
cd ops/
echo > __init__.py
echo > basic.py
d ..
ls
cd ..
ls
mv views.py/ views
ls
cd synced/libs/gsweb/
ls
emacs gsweb/
ls
cd
source virtualenv/gezi/bin/activate
cd synced/backend/gezi/
ls
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
sudo chown -R ubuntu.ubuntu /home/ubuntu/virtualenv/gezi/src/
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
sudo chown -R ubuntu.ubuntu /home/ubuntu/virtualenv/gezi/
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
ls
mkdir auth
cd auth
ls
cp ../user/api_urls.py ./
emacs api_urls.py
exit
source virtualenv/gezi/bin/activate
cd synced/backend/gezi/
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
python manage.py runserver 0.0.0.0:9100
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
python manage.py runserver 0.0.0.0:9100
ls
cd aau
cd auth/
ls
cd ops/
ls
cd ..
python
python manage.py shell
python manage.py runserver 0.0.0.0:9100
emacs ~/virtualenv/gezi/src/gsweb/gsweb/rest.py
python manage.py runserver 0.0.0.0:9100
emacs ~/virtualenv/gezi/src/gsweb/gsweb/rest.py
python manage.py runserver 0.0.0.0:9100
telnet 192.168.56.110:27017
telnet 192.168.56.110 27017
python manage.py runserver 0.0.0.0:9100
pyhton manage.py shell
python manage.py shell
python manage.py runserver 0.0.0.0:9100
python manage.py shell
python manage.py runserver 0.0.0.0:9100
ls
cd ../../
cd ~
cd code/
ls
cd testWebpack/
ls
webpack pageA.html
ls
ls js
webpack js/pageB.coffee js/pp.js
cat webpack.conf
webpack --module-bind "coffee=coffee" js/pageB.coffee js/pp.js
webpack --help
ls
cat webpack.conf
webpack --resolve-loader-alias /usr/local/lib/node_modules --module-bind "coffee=coffee" js/pageB.coffee js/pp.js
ls
sudo cp webpack.conf /etc/webpack.config.js
alias webpack="webpack --config /etc/webpack.config.js"
webpack  js/pageB.coffee js/pp.js
man alias
alias --help
alias -h
alias
webpack
sudo mv /etc/webpack.config.js /tmp/webpack.config.js
alias webpack="webpack --config /tmp/webpack.config.js"
webpack  js/pageB.coffee js/pp.js
emacs /tmp/webpack.config.js
sudo emacs /tmp/webpack.config.js
webpack  js/pageB.coffee js/pp.js
cd ~/synced/
ls
cd backend/
ls
cd gezi/
ls
git status
ls
emacs gezi/urls.py
tmux
sudo apt-get install tmux
python manage.py runserver 0.0.0.0:9100
ls
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
python manage.py runserver 0.0.0.0:9100
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
python manage.py runserver 0.0.0.0:9100
cd test/
ls
python app_open_account.py
ls
cat /etc/rc.local
ifconfig
emacs fix.sh
exit
ls
rm fix.sh
ls
chmod +x fix.sh
./fix.sh
./fix.sh  code/ssss
./fix.sh
./fix.sh synced/backend/gezi/
exit
cat /etc/bash.bashrc
cd
cd synced/frontend/
ls
cd ..
cd user/lihaizhu/
ls
cd testWebpack/
ls
cat webpack.config.
cat webpack.config.js
vi webpack.config.js
ls
cat css/style.less
webpack css/style.less css/style.css
webpack --help
webpack --entry css/style.less css/style.css
webpack css/style.less css/style.css
cat webpack.config.js
sudo npm install -g style-loader
ls
cat webpack.config.sample.js
locate node_modules
ls /usr/local/lib/node_modules/
ls
vi webpack.config.js
webpack css/style.less css/style.css
vi webpack.config.js
webpack css/style.less css/style.css
vi webpack.config.js
webpack css/style.less css/style.css
sudo npm install -g loader-utils
webpack css/style.less css/style.css
ls
cat css/style.css
webpack --help
cd
source virtualenv/gezi/bin/activate
pip install -e git+git@repo.yuexue.com:backend/libs/mpfetcher.git#egg=mpfetcher
sudo apt-get install libxml-dev libxslt-dev
sudo apt-get install libxslt1-dev
pip install -e git+git@repo.yuexue.com:backend/libs/mpfetcher.git#egg=mpfetcher
ls
tmux new -s fix
cd synced/backend/
ls
cd gezi/
ls
cat reqs.txt
pip installl -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=g
pip install -e git+git@repo.yuexue.com:backend/libs/gsdb.git#egg=gsdb
exit
ls
rm fix.sh~
source virtualenv/gezi/bin/activate
pip freeze
exit
cd code/
ls
cd ~/synced/backend/gezi/
git remote -v
ls
cd misc/
git status
ls
emacs restore.sh
git status
git add restore.sh
git commit -m "fix restore submodule update"
exit
ls -lh
cd synced/
ls -lh
cd frontend/
ls
mkdir -p projects/gezi
cd projects/gezi/
git clone git@repo.yuexue.com:frontend/projects/gezi.git ./
ls
cd ../../
cd ../backend/
ls
cd projects/gezi/
ls
cd misc/
ls
cd ../
./misc/restore.sh
ls
ls -lh
mkdir static
rm -r static/
cat misc/restore.sh
realpath ../../../frontend/gezi/static
git pull
ls -lh
cat misc/restore.sh
realpath ../../../frontend/gezi/static
git pull
cat misc/restore.sh
realpath ../../../frontend/projects/gezi/static
ls -lh
misc/restore.sh
cd
emacs fix.sh
cat fix.sh
vi fix.sh
cat fix.sh
ls
rm fix.sh~
ls
cat fix.sh
vi .ssh/config
ssh git@repo.yuexue.com
cat ~/.ssh/config
exit
ls -lh
source virtualenv/gezi/bin/activate
ls -lh
ls
cd synced/
ls
ls -lh
cd backend/projects/gezi/
git pull
git submodule update
python manage.py shell
cd gezi/
cp office_settings.py local_settings.py
cd ..
python manage.py shell
tmux list-s
source virtualenv/gezi/bin/activate
cd synced/
ls
cd gsfx/
cd >>
ls
cd >>
LS
ls
cd ..
ls
cd backend/projects/gezi/
ls
grep -r "192\.168\.2\.111" ./
emacs api_service/config.py
python manage.py shell
ls
cd synced/
ls
source ~/virtualenv/gezi/bin/activate
cd backend/projects/
ls
cd gezi/
python manage.py shell
git status
vi api_service/config.py
python manage.py shell
telnet 192.168.2.217 6610
python manage.py shell
source virtualenv/gezi/bin/activate
python
ls
exit
ls
cd synced/
ls
python
source ~/virtualenv/gezi/bin/activate
python
cd tools/sqlserver2mysql/
ls
python
ls -lh
python
ls
python
ls
cd hsjyexport/
emacs
ls
source virtualenv/gezi/bin/activate
cd synced/tools/sqlserver2mysql/
ls
python
cat /etc/apt/sources.list
tmux list-s
ls
cd virtualenv/
ls
cd gezi/
ls
cd ~
ls
cd synced/
ls
cd libs/
ls
cd ..
ls
cd tools/
ls
cd sqlserver2mysql/
ls
source ~/virtualenv/gezi/bin/activate
python
ls
python
python t.py
python
python t.py
python .tpy
python t.py
ls
cat .ssh/config
vi .ssh/config
ls
source virtualenv/gezi/bin/activate
pip freeze
python
curl -X POST -d 'json={"json":"message"}' http://172.17.0.6:8888/debug.test
pip install fluentd-logger
pip install fluent-logger
pip install --upgrade pip
python
ls
cd /tmp
ls
emacs t.py
pip install https://github.com/socrateslee/fluent-logger-python
pip install https://github.com/socrateslee/fluent-logger-python/archive/master.zip
python t.py
emacs t.py
ls
cd synced/
ls
source ~/virtualenv/gezi/bin/activate
ls
cd backend/services/
ls
cd ucenter/
git pull
ls
git pull
tig
git log
ls
python init.py
pip install tornado
python init.py
git submodule update
python init.py
git submodule update --init
python init.py
pip install uwsgi
cd /tmp
ls
rm -rf *
sudo rm -rf *
ls
cd
ls
sudo apt-get autoremove
sudo dpkg-reconfigure tzdata
exit
cd synced/tools/
cd sqlserver2mysql/
ls
cd hsjy
ls
cd test1/
ls
cat current_imported.stat
emacs ../hsjy_export.py
cat current_imported.stat
python
tmux attach -t yx
exit
source  virtualenv/gezi/bin/activate
pip freeze
cd synced/backend/projects/gezi/
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsutil.git#egg=gsutil
pip install -e git+git@repo.yuexue.com:backend/libs/gsconfig.git#egg=gsconfig
pip install -e git+git@repo.yuexue.com:backend/libs/awsutil.git#egg=awsutil
exit
cd code/
ls
cd ../synced/backend/projects/
ls
cd gezi/
ls
source ~/virtualenv/gezi/bin/activate
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsconfig.git#egg=gsconfig
exit
sudo pip install uwsgi
cd synced/operation/install/
ls
cd supervisor/
ls
./install.sh
ls
emacs /etc/supervisord.conf
sudo emacs /etc/supervisord.conf
ls
cd ../../
cat /etc/supervisord.conf
sudo reboot
exit
ifconfig
ps aux|grep python
sudo service supvisord status
sudo service supervisord status
sudo service supervisord start
sudo service supervisord status
ps aux
cat /etc/bash.bashrc
emacs /etc/bash.bashrc
sudo emacs /etc/bash.bashrc
exit
ps xua
exit
ps xua
sudo service supervisord status
echo $?
sudo service supervisord stop
sudo service supervisord status
echo $?
sudo emacs /etc/bash.bashrc
ps xua|grep sshd
exit
ls
sudo apt-get autoremove
ls
cd /tmp
ls
cd
ls
cd /tmp
ls
rm -rf testimport/
ls
cd
ls
exit
ifconfig
source virtualenv/gezi/bin/activate
pip install suds
cd synced/backend/projects/gezi/
ls
cd gezi/
ls
cp office_settings.py local_settings.py
emacs services.py
emacs office_settings.py
ls
cd ..
python manage.py runserver 0.0.0.0:9000
git checkout gezi/office_settings.py
emacs gezi/local_settings.py
python manage.py runserver 0.0.0.0:9000
python manage.py shell
curl "http://192.168.4.4:50080/BjAdmin/Interface/gscrmtoxxfu.asmx"
python manage.py shell
curl """http://192.168.4.4:50080/BjAdmin/Interface/gscrmtoxxfu.asmx?WSDL"
curl ""http://192.168.4.4:50080/BjAdmin/Interface/gscrmtoxxfu.asmx?WSDL"
curl "http://192.168.4.4:50080/BjAdmin/Interface/gscrmtoxxfu.asmx?WSDL"
python
exit
ls
node
sudo npm install -g gulp
curl "https://registry.npmjs.org"
sudo npm install -g gulp
cd ~
cd virtualenv/
ls
cd virtualenv/
ls
cd compile_include/
ls
sudo emacs /usr/local/bin/compile_include.sh
sudo chmod +x /usr/local/bin/compile_include.sh
ls
cd
ls
mkdir a
cd a/
mkdir s
mkdir d
compile_include.sh s d
ls
sudo emacs /usr/local/bin/compile_include.sh
cd ~/virtualenv/compile_include/
ls
npm install gulp
cd
cd a
ls
compile_include.sh s d
sudo emacs /usr/local/bin/compile_include.sh
compile_include.sh s d
ls
gulp
sudo npm install -g gulp
ls
rm -rf node_modules
rm gulpfile.js
compile_include.sh
compile_include.sh s d
cd ..
rm -rf a
cd /tmp/
ls
sudo emacs
ls
exit
tmux attach -t server
tmux list -s
tmux list-s
ps axu
exit
source virtualenv/gezi/bin/activate
ls
cd synced/backend/projects/gezi/
python manage.py runserver 0.0.0.0:9100
pip install pymssql
python
cd ~..
cd ..
cd libs/gsdb/
ls
python setup.py install
ls
cd
python
cd synced/libs/gsdb/
ls
python setup.py install
cd ..
cd gsutil/
cd ..
python setup.py install
cd ../gsdb/
python
pip install bs4
cd
cd synced/backend/projects/gezi/
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsdb.git#egg=gsdb
pip install -e git+git@repo.yuexue.com:backend/libs/gsutil.git#egg=gsutil
cd
cd .ssh
ls
ls -lh
chmod 600 config
chmod 600 id_rsa
chmod 600 vmop.pub
cat config
cat id_rsa
cat vmop.pub
source virtualenv/gezi/bin/activate
python
cd synced/misc/
ls
cd ..
ls
cd tools/
ls
cd sqlserver2mysql/
ls
python
rm \#hsjy_export.py#
emacs hsjy_export.py
cd ..
cd ...
cd ..
cd ../misc/
ls
mcd ..
cd ../gesafe/
mkdir misc
cd misc/
mkdir chengdustat
cd chengdustat/
python
python chengdustat.py
pip install openpyxl
python chengdustat.py
ls
source virtualenv/gezi/bin/activate
cd
cd synced/backend/projects/gezi/
ls
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsdb.git#egg=gsdb
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git#egg=gsweb
exit
source virtualenv/gezi/bin/activate
sudo pip install attrs
sudo pip install phone
sudo pip install pandas
sudo pip uninstall attrs
sudo pip uninstall phone
pip install attrs
pip install phone
pip install pandas
pip install toolz
pip --help
cd /tmp/
ls
cd ~
ls
cd .cache/
ls
cd pip/
ls
cd ..
du -h
cd ..
pip --no-cache-dir
exit
sudo apt-get update
ls
emacs fix.sh
sudo apt-get install libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk
source virtualenv/gezi/bin/activate
pip install pillow
sudo apt-get autoremove
ls
ls -lh
exit
ls
source virtualenv/gezi/bin/activate
pip freeze
pip install --upgrade fluent-logger
python
exit
source virtualenv/gezi/bin/activate
python
source virtualenv/gezi/bin/activate
cd synced/backend/projects/gezi/
ls
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsutil.git#egg=gsutil
car reqs.txt
cat reqs.txt
pi install -e git+git@repo.yuexue.com:backend/libs/gatool.git#egg=gatool
pip install -e git+git@repo.yuexue.com:backend/libs/gatool.git#egg=gatool
pip install pip install -e git+https://github.com/aliyun-beta/aliyun-opensearch-python-sdk.git#egg=opensearch
pip install -e git+https://github.com/aliyun-beta/aliyun-opensearch-python-sdk.git#egg=opensearch
cart reqs.txt
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsdb.git#egg=gsdb
cd ~/synced/
ls
emacs ~/fix.sh
ls
cd
ls
cd /tmp/
ls
cd ~
pip --help
pip --version
ls
python
cd
ls
pip freeze
pip install -e git+git@repo.yuexue.com:backend/libs/gsweb.git@1fe49c9da6db85ac7c65bf765a24badb3b40887f#egg=gsweb
quit()
exit
source virtualenv/gezi/bin/activate
ls
cd synced/backend/projects/gezi/
ls
git branch
cd ge
cd gezi/
ls
diff local_settings.py office_settings.py
ls
cp office_settings.py local_settings.py
emacs local_settings.py
ls
cd ..
ls
git status
cd gezi/
emacs services.py
rm services.py
vi services.py
emacs local_settings.py
ls
cd ..
python manage.py shell
mv gezi/services.py ./
python manage.py shell
ls
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsasync.git#egg=gsasync
cat reqs.txt
pip install -e git+https://github.com/aliyun-beta/aliyun-opensearch-python-sdk.git#egg=opensearch
pip install futures
pip install six
pip install --upgrade six
ls
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsutil.git#egg=gsutil
pip install -e git+git@repo.yuexue.com:backend/libs/gatool.git#egg=gatool
ls
cat reqs.txt
ls
git branch
emacs utility/ga.py
python manage.py runserver 0.0.0.0:9100
emacs auth/views/api.py
python manage.py runserver 0.0.0.0:9100
cat wsgi.ini
uwsgi --ini wsgi.ini
sudo lsof -i:9100
ps xua|grep wsgi
netstat -na
uwsgi --udp 127.0.0.1:1978
cat wsgi.ini
uwsgi --udp 127.0.0.1:9102
uwsgi --stop /tmp/gezi_wsgi.pid
ps xua|grep wsgi
uwsgi --stop /tmp/gezi_wsgi.pid
ps xua|grep wsgi
emacs wsgi.ini
ps xua|grep wsgi
uwsgi --ini wsgi.ini
git sttaus
git status
git diff wsgi.ini
emacs wsgi.ini
uwsgi --ini wsgi.ini --daemonize=no
uwsgi --stop /tmp/gezi_wsgi.pid
git submodule update -- utility
emacs utility/ga.py
emacs wsgi.ini
uwsgi --ini wsgi.ini --daemonize=no
uwsgi --stop /tmp/gezi_wsgi.pid
emacs wsgi.ini
uwsgi --stop /tmp/gezi_wsgi.pid
uwsgi --ini wsgi.ini --daemonize=no
uwsgi --stop /tmp/gezi_wsgi.pid
emacs wsgi.ini
uwsgi --stop /tmp/gezi_wsgi.pid
uwsgi --ini wsgi.ini
pip install ~/synced/libs/gatool/
pip --help
pip install --help
pip install -e ~/synced/libs/gatool/
ls
emacs ~/virtualenv/gezi/src/gatool/gatool/core.py
pip install --upgrade --force-reinstall  ~/synced/libs/gatool/
emacs ~/virtualenv/gezi/src/gatool/gatool/core.py\
emacs ~/virtualenv/gezi/src/gatool/gatool/core.py
emacs ~/virtualenv/gezi/src/gatool/gatool/client.py
emcas ~/synced/libs/gatool/gatool/client.py
emacs ~/synced/libs/gatool/gatool/client.py
emacs ~/virtualenv/gezi/src/gatool/gatool/client.py
pip install --upgrade --force-reinstall --no-deps  ~/synced/libs/gatool/
emacs ~/virtualenv/gezi/src/gatool/gatool/client.py
pip install --upgrade --force-reinstall --no-deps  /home/ubuntu/synced/libs/gatool/
emacs ~/virtualenv/gezi/src/gatool/gatool/client.py
cd ~/synced/libs/gatool/
ls
python setup.py install
cd ~/synced/backend/projects/gezi/
ls
cat no
rm no
emacs utility/ga.py
uwsgi --ini wsgi.ini
python manage.py runserver 0.0.0.0:9100
emacs auth/views/api.py
python manage.py runserver 0.0.0.0:9100
cat rq
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gatool.git#egg=gatool
emacs ~/virtualenv/gezi/src/gatool/gatool/client.py
ls -lh
cat deploy_hook.sh
cat rq
cat reqs.txt
git status
emacs utility/ga.py
python manage.py runserver 0.0.0.0:9100
emacs auth/views/api.py
python manage.py runserver 0.0.0.0:9100
emacs utility/ga.py
python manage.py runserver 0.0.0.0:9100
emacs utility/ga.py
python manage.py runserver 0.0.0.0:9100
emacs auth/views/api.py
python manage.py runserver 0.0.0.0:9100
curl "https://analytics.xxanfu.com"
ping analytics.xxanfu.com
emacs utility/ga.py
ping analytics.xxanfu.com
python manage.py runserver 0.0.0.0:9100
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gatool.git#egg=gatool
python manage.py runserver 0.0.0.0:9100
emacs utility/ga.py
python manage.py runserver 0.0.0.0:9100
python
sudo apt-get install python
sudo apt-get udpate
sudo apt-get udate
sudo apt-get update
sudo apt-get install python
sudo add-apt-repository ppa:fkrull/deadsnakes-python2.7
sudo apt-add-repository ppa:fkrull/deadsnakes-python2.7
sudo apt-get install python-software-properties
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:fkrull/deadsnakes-python2.7
sudo apt-get install python2.7
sudo apt-get update
sudo apt-get install python2.7
python manage.py runserver 0.0.0.0:9100
python
cd ~/virtualenv/gezi/
ls
cd lib
ls
ls -lh
cd python2.7/
ls
ls -lh
cd
cd virtualenv/gezi/
ls
cd bin
ls
ls -lh
which python
locate python2.7
ls /usr/local/bin/ -lh
ls /usr/bin/ -lh
ls
cp /usr/bin/python2.7 ./
ls
ls -lh
cp /usr/bin/python2.7 ./python
python
cd ~/synced/backend/projects/gezi/
python manage.py runserver 0.0.0.0:9100
uwsgi --ini wsgi.ini
cat wsgi.ini
uwsgi --ini wsgi.ini
emacs wsgi.ini
uwsgi --ini wsgi.ini
emacs wsgi.ini
uwsgi --ini wsgi.ini
cd ..
ls
cd ..
cd misc/
ls
cd aws_simple_job/\
cd aws_simple_job/
ls
cat reqs.txt
ls
cat jobs/
ls -lh
cd jobs/
ls
cd ..
cat run.py
cd ~
cd synced/backend/projects/gezi/
python manage.py shell
cron
sudo cron
ps xua|grep cron
crontab -l
sudo cron
sudo service cron statuz
sudo service cron status
status cron
sudo service cron restart
ps aux|grep cron
cron --help
man cron
killall croin
killall cron
pkill
ps cax
ps aux
ps aux|grep cron
ps cax|grep cron
man ps
ps cax|grep cron
ps cax|grep cron || echo 1
sudo kill 2250
ps cax|grep cron || echo 1
ps cax|grep cron || cron
ps cax|grep cron || sudo cron
emacs wsgi.ini
uwsgi --ini wsgi.ini
emacs wsgi.ini
uwsgi --ini wsgi.ini
pip install gevent
uwsgi --ini wsgi.ini
emacs wsgi.ini
uwsgi --ini wsgi.ini
emacs gezi/local_settings.py
emacs wsgi.ini
emacs gezi/settings.py
emacs wsgi.ini
uwsgi --ini wsgi.ini
emacs wsgi.ini
emacs gezi/common_settings.py
uwsgi --ini wsgi.ini
python
emacs gezi/common_settings.py
uwsgi --ini wsgi.ini
cat wsgi.ini
emacs gezi/wsgi.py
uwsgi --ini wsgi.ini
ls
emacs wsgi.ini
uwsgi --ini wsgi.ini
emacs wsgi.ini
uwsgi --ini wsgi.ini
emacs wsgi.ini
uwsgi --ini wsgi.ini
python
git checkout wsgi.ini
git chekcout gezi/wsgi.py
git checkout gezi/wsgi.py
git status
emacs wsgi.ini
uwsgi --ini wsgi.ini
cat reqs.txt
pip install -e git+git@repo.yuexue.com:backend/libs/gsasync.git#egg=gsasync
uwsgi --ini wsgi.ini
sudo apt-get autoremove
sudo apt-get install openssl
pip --version
cd ~/virtualenv/gezi/
ls
cd lib/python2.7/site-packages/
ls
emacs django
cd ~/synced/backend/projects/gezi/
ls
python manage.py runserver 0.0.0.0:9100
ls
cd /tmp
ls
ps xau
supervisorctl status
cat /etc/supervisord.conf
ls
rm gezi_wsgi.pid
ls
ls -lh
ls
cd /var/log/
ls
ls -lh
cd apt/
ls
cd ..
du -h
cd ..
cd ~
exit
source ~/virtualenv/gezi/bin/activate
python manage.py shell
source  virtualenv/gezi/bin/activate
cd synced/backend/projects/gezi/
ls
python manage.py runserver 0.0.0.0:9100
cat gezi/idc_settings.py
cd
pyhton
python
pip freeze
python
cd synced/backend/projects/gezi/
python manage.py rundirect ad/ops/cmd.py list
emacs ad_01.json
emacs ad_02.json
ls
emacs ad_03.json
ls -h
python manage.py rundirect ad/ops/cmd.py update ad_01.json
python manage.py rundirect ad/ops/cmd.py update ad_02.json
python manage.py rundirect ad/ops/cmd.py update ad_03.json
python manage.py rundirect ad/ops/cmd.py list
cat ad/ops/cmd.py
python manage.py rundirect ad/ops/cmd.py list
pythhon
python
python manage.py shel
python manage.py rundirect ad/ops/cmd.py list a
python manage.py runserver 0.0.0.0:9100
emacs ad_01.json
emacs ad_02.json
emaca ad_03.json
emacs ad_03.json
python manage.py rundirect ad/ops/cmd.py update ad_01.json
python manage.py rundirect ad/ops/cmd.py update ad_02.json
python manage.py rundirect ad/ops/cmd.py update ad_03.json
python manage.py runserver 0.0.0.0:9100
emacs ad_03.json
emacs ad_02.json
emacs ad_01.json
python manage.py rundirect ad/ops/cmd.py update ad_03.json
python manage.py runserver 0.0.0.0:9100
python manage.py shell
emacs gezi/local_settings.py
python manage.py shell
emacs gezi/local_settings.py
python manage.py shell
emacs gezi/local_settings.py
python manage.py shell
emacs gezi/local_settings.py
python manage.py shell
emacs
sudo docker images
python manage.py shell
cd
emacs
cat /tmp/3tong.py
emacs /tmp/3tong.py
cat /tmp/3tong.py
cd synced/backend/projects/gezi/
python manage.py shell
cd
cd synced/backend/
cd ..
tput setaf 48 ; whoami | figlet | tr _ … | tr \\ \` | tr \| ¡ | tr / √
python
cat /etc/supervisord.conf
source virtualenv/gezi/binm/ac
source virtualenv/gezi/bin/activate
python
pip install pinyin
cd
cd ~/synced/backend/projects/gezi/
cat reqs.txt
pip install -e git+git@repo.xxanfu.com:backend/libs/gsutil.git#egg=gsutil
pip install -e git+git@repo.xxanfu.com:backend/libs/gsasync.git#egg=gsasync
pip install -e git+git@repo.xxanfu.com:backend/libs/ravenmsg.git#egg=ravenmsg
python
pip install pinyin
ls
pip freeze
pip install redis
cat reqs.txt
pi install -e git+git@repo.xxanfu.com:backend/libs/gsdb.git#egg=gsdb
pip install -e git+git@repo.xxanfu.com:backend/libs/gsdb.git#egg=gsdb
pip install -e git+git@repo.xxanfu.com:backend/libs/gscache.git#egg=gscache
pip install -e git+git@repo.xxanfu.com:backend/libs/gatool.git#egg=gatool
sudo curl -o `git --exec-path`/git-deploy-archive "https://raw.githubusercontent.com/socrateslee/git-deploy-archive/master/git-deploy-archive.sh"
sudo chmod +x `git --exec-path`/git-deploy-archive
ls `git --exec-path`
sudo pip install ynm3k
pip --help
pip install jieba
exit
git status
git  pull
emacs gsdbsite/urls.py
git status
git chekcout base_data/views/baseservice.py
git checkcout base_data/views/baseservice.py
git checkout base_data/views/baseservice.py
git checkout gsdbsite/urls.py
git diff gsdbsite/settings.py
git checkout master
git checkotu gsdbsite/base_data/views/api_netvalueviews.py
git checkout gsdbsite/base_data/views/api_netvalueviews.py
git checkout base_data/views/api_netvalueviews.py
git checkout master
git pull
git status
git diff base_data/models/model_manager.py
git pull
git status
exit
source ~/virtualenv/gezi/bin/activate
ls
python manage.py runserver 0.0.0.0:10000
exit
cd
cd synced/libs/
ls
cd gsweb/
ls
emacs gsweb/dj_context.py
cd
cd virtualenv/gezi/lib/python2.7/
ls
cd site
cd site-packages/
ls
cd django
ls
cd middleware/
ls
emacs csrf.py
cd
cd synced/backend/projects/gezi/
cd gezi/
grep -r MIDDLEWARE
exit
pip install pymysql
source ~/virtualenv/gezi/bin/activate
pip install pymysql
curl "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"
curl "http://127.0.0.1:10000/api/v1/private/base/netvalue/release" -vv
git status
curl "http://127.0.0.1:10000/api/v1/private/base/netvalue/release" -vv
curl "http://127.0.0.1:10000/api/v1/private/base/netvalue/release" -vv |json_pp
curl --help
curl --cookie "sessionid:766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"
curl --cookie "sessionid:766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"|json_pp
curl --cookie "sessionid=766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"|json_pp
curl --cookie "sessionid=766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"
curl --data-raw {} --cookie "sessionid=766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"
curl --data {} --cookie "sessionid=766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"
man curl
curl --data-ascii {} --cookie "sessionid=766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"
2
curl --data-ascii {} --cookie "sessionid=766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"
grep -r CsrfViewMiddleware ./
curl --data-ascii {} --cookie "sessionid=766f9150-c269-4c7f-b132-039441b41046" "http://127.0.0.1:10000/api/v1/private/base/netvalue/release"
exit
emacs ~/synced/backend/projects/gezi/
cd ~/synced/backend/projects/g
cd ~/synced/backend/projects/gezi/
grep -r csrf ./
cd ~/synced/libs/
cd gsweb/
grep -r csrf ./
exit
source virtualenv/gezi/bin/activate
pip install python-levenshtein
cd synced/backend/projects/gezi/
python manage.py shell
sudo pip install --no-deps --upgrade ynm3k
cd
cd synced/backend/projects/gezi/
cat services.py
ls -lh
cat services.py
python manage.py runserver 0.0.0.0:9000
pip install xmltodict
cd
cd synced/simu/data_service/
ls
cd gsdbsite/
ls
cat services.py
python manage.py shell
python
eamcs zqtzjj.json
vi zqtzjj.json
ls -lh
mv zqtzjj.json amac_company_assessment/task/
python
ls
ls amac_company_assessment/task/ -lh
python manage.py rundirect amac_company_assessment/task/collect_amac_data.py
python manage.py shell
python manage.py rundirect amac_company_assessment/task/collect_amac_data.py
exit
cd synced/libs/gsasync/
source ~/virtualenv/gezi/bin/activate
python
cd ..
python
cd
python
cd synced/libs/gsweb/
ls
pip install -e ./
cd ..
cd gsasync/
pip install -e ./
cd ..
cd ravenmsg/
git status
git push
pip install -e ./
exit
cd virtualenv/gezi/src/gatool/
cd gatool
ls
git pull
cd
ls
exit
source virtualenv/gezi/bin/activate
uwsgi --version
which uwsgi
ls
cd virtualenv/
ls
cd gezi/
ls
cd src/
ls
cd gatool/
ls
cd gatool
git status
git pull
cd
cd .ss
cd .ssh
ls
vim config
vim known_hosts
vim authorized.keys
ll
vim authorized.keys
mv authorized.keys authorized_keys
exit
exit
ls
cd code
ls
cd ../virtualenv/
ls
cd ..
vim fix.sh
cd code/
ls
cd ..
mkdir -p code/backend/projects/gezi
cd code/backend/projects/gezi
git clone git@repo.xxanfu.com:backend/projects/gezi.git ./
git submodule update --init
cd ~
mkdir -p code/frontend/projects/gezi
cd code/frontend/projects/gezi
git clone git@repo.xxanfu.com:frontend/projects/gezi.git ./
cd ~/code/backend/projects/
git clone git@repo.xxanfu.com:simu/data_service
ls
cd gezi/
ls
/bin/bash misc/restore.sh
cd ..
ls
cd ..
ls
cd frontend/
cd projects/
ls
cd gezi/
ls
vim ~/code/backend/projects/gezi/misc/restore.sh
cd ~/code/backend/projects/gezi/
ls
/bin/bash misc/restore.sh
vim misc/restore.sh
cd ~/code/frontend/projects/gezi/
ls
vim ~/code/backend/projects/gezi/misc/restore.sh
cd ~
wget http://192.168.4.4:8080/tmp/services.py -O /home/ubuntu/config/services.py
wget http://192.168.4.4:8080/tmp/pf_config_vconsole.json -O /home/ubuntu/code/pf_config_vconsole.json
wget http://192.168.4.4:8080/tmp/api.json -O /home/ubuntu/code/api.json
cd code/backend/projects/data_service/gsdbsite/
ls
cp services.py-office services.py
ls
cd ~
tmux new -s server -d
tmux a -t server
ls
wget http://192.168.4.4:8080/tmp/create_gezi.sh
ls
vim create_gezi.sh
pwd
ls
cd code
ls
cd ../shared/
ls
cd ../synced/
s
ls
cd ..
cd code
pwd
ls
vim api.json
ls
cd code/
ls
cd ..
ps -ef | grep python
ls
cd config
ls
cd ../code
ls
cd backend/
ls
cd projects/
ls
cd data_service/
ls
cd ~
cd code/
ls
vim api.json
tmux ls
tmux attach
tmux ls
tmux attach
vim api.json
tmux attach
vim ~/.tmux.conf
tmux attach
tmux -v
tmux ls
tmux -V
tmux ls
tmux attach
tmux ls
tmux kill-window -t 1
tmux ls
tmux attach
tmux ls
tmux attach
vim api.json
tmux ls
tmux attach
tmux ls
tmux a
ls
vim code/api.json
tmux a
cd code
ls
cd backend/
ls
cd projects/
ls
cd data_service/
ls
cd ..
ls
cd gezi/
ls
cd ~
tmux a
cd code/backend/projects/gezi/
ls
cd ad
ls
vim ops/ad_util.py
mv ops/ad_util.py ops/ad_util.py_bak
vim ops/ad_util.py
cp ops/ad_util.py_bak ops/ad_util.py
vim ops/ad_util.py
tmux a
vim ops/ad_util.py
tmux a
vim ops/ad_util.py
tmux a
vim ops/ad_util.py
tmux a
git status
git diff ops/ad_util.py
git status
cd ops/
ls
git status
git checkout -- ad_util.py
git status
git checkout -- ad_util.py
rm ad_util.py
mv ad_util.py_bak ad_util.py
git status
cd ../../
ls
cd deployclient/
ls
git status
cd ..
ls
cd ad
ls
git status
cd ..
ls
cd ..
cd gezi/
ls
git status
git submodule update -- ad
git checkout -b feature/session_state
cd .git
ls
mv index.lock index.lock.bak
cd ..
ls
git checkout -b feature/ad_session_state
ls
cd ad
ls
git checkout -b feature/ad_session_state
git status
vim ops/ad_util.py
tmux a
vim ops/ad_util.py
tmux
tmux ls
tmux a
vim ops/ad_util.py
tmux a
vim ops/ad_util.py
tmux a
vim ops/ad_util.py
tmux a
cd ..
cd ~
ls
cd code
ls
vim api.json
tmux a
cd backend/projects/
ls
cd gezi/
ls
cd ad
vim ops/
tmux a
vim ~/.tmux.conf
tmux a
cls
clear
cd ~/
ls
cd /bin/
ls
cd ~
ls
cd /
ls
cd /etc/
ls
clear
vim /etc/host
ls
cd static
ls
cd user
ls
cd ~
ls
cd virtualenv/
ls
cd gezi/
ls
cd lib/
ls
cd python2.7/
ls
cd ~
clear
cd /bin
ls
rm -r asset/
rm -r deployclient/
rm -r fundinfo/
rm -r utility/
git branch
git status
git fetch origin
git reset --hard origin/master
ls
ls utility/
ls
cd utility/
ls
cd ..
ls
git branch
git submodule update --init
git branch
git checkout feature/ad_session_state
git branch
git status
cd code/backend/projects/
ls
cd gezi/
ls
cd .git
ls
vim index.lock
vim index.lock.bak
ls -l
cd ..
ls
git status
git diff ad/ops/ad_util.py
tmux a
git log
git status
git checkout master
git status
ls
vim reqs.txt
git branch -a
git branch
git checkout master
cd .git
rm index.lock
cd ..
ls
git checkout master
git branch
git checkout -b release origin/release
git branch
git status
git pull
git status
git checkout master
git pull
ls
vim reqs.txt
pip install -e git+git@repo.xxanfu.com:backend/libs/gscache.git#egg=gscache
source ~/virtualenv/gezi/bin/activate
pip install -e git+git@repo.xxanfu.com:backend/libs/gscache.git#egg=gscache
tmux
tmux ls
tmux a
cd ..
ls
cd data_service/
deactivate
ls
cd ..
ls
cd gezi/
ls
cd ..
cd data_service/
git status
git branch -a
git checkout -b release origin/release
git branch
git status
git checkout master
git status
git pull
ls
cd gsdbsite/
ls
vim reqs.txt
cd ..
cd ~/virtualenv/
ls
cd compile_include/
ls
cd ..
cd ~/code/backend/projects/data_service/
ls
tmux a
cd ../gezi/
ls
git status
git diff utility/
git branch
git checkout release
git branch
git status
cd fundinfo/
ls
git status
cd ..
ls
tmux a
vim reqs.txt
tmux a
git branch
git submodule update --init
git status
git branch
git fetch origin
git reset --hard origin/master
ls utility/
git status
git submodule update --init
ls
cd asset/
ls
cd ..
ls
vim .git/config
git status
ls
cd ..
ls
vim gezi/.git
mv gezi gezi_bak
ls
mkdir gezi
cd gezi
ls
git clone git@repo.xxanfu.com:backend/projects/gezi.git ./
vim ad/ops/ad_util.py
git status
git branch
vim ~/code/api.json
vim ~/config/services.py
ls
ls asset/
git branch
git status
vim ad/ops/ad_util.py
cd ..
ls
cd data_service/
ls
cd ..
ls
cd gezi/
ls
git status
git branch
cd ..
ls
cd gezi
ls
git branch
cd ad/
ls
ops
ls
cd ops/
ls
vim ad_util.py
cp ad_util.py ad_util.py.bak
vim ad_util.py
cd ../..
ls
cd ..
ls
mv gezi gezi_bak01
mv gezi_bak gezi
ls
cd gezi
ls
git branch
vim ad/ops/ad_util.py
git branch
vim ad/ops/ad_util.py
ls
cd code/backend/projects/
ls
cd gezi
ls
git clone git@repo.xxanfu.com:backend/projects/gezi.git ./
ls
git submodule update --init
ls
/bin/bash misc/restore.sh
tmux a
cd ..
ls
vim gezi_bak01/
tmux a
