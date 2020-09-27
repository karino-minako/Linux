chown ユーザー [. グループ] ディレクトリ
chown ユーザー [. グループ] ファイル
touch user
ls -l user
chown nobody user
su
chown nobody user
ls -l user

chrrp グループ ディレクトリ
chgrp グループ ファイル
touch groups
ls -l groups
chgrp nobody groups
su
chgrp nobody groups
ls -l groups

ls -l .bashrc

chmod モード [, モード]... ディレクトリ
chmod モード [, モード]... ファイル
chmod 8進数表記のモード ディレクトリ
chmod 8進数表記のモード ファイル
touch chownfile
chmod u+rw-x,go+r-wx chownfile
ls -l chownfile
chmod g+w chownfile
ls -l chownfile
chmod u-r,o+w chownfile
la -l chownfile
chmod go+x chownfile
ls -l chownfile
touch chownfile
chmod u+rw-x,go+r-wx chownfile
ls -l chownfile
chmod 664 chownfile
ls -l chownfile
chmod 226 chwnfile
ls -l chownfile
chmod 277 chownfile
ls -l chownfile

touth idbitfile
chmod u+rw-,go+r-wx idbitfile
le -l idbitfile
chod u+s idbitfile
ls -l idbitfile
chmod u-s,g+s odbitfile
ls -l idbitfile
chmod +t idbitfile
ls -l idbitfile

umask [8進数のモードのマスク値]
umask
touch umask0022
umask 070
touch umask0070
umask 072
touch umask0072
ls -l umask00*

umask -S
touch umask0022
umask -S u=rw,g=,o=rw
toush umasko0077
ls -l umask00*

# 章末テスト
1.3

2.chmod 755 chownfile

3.chmod 644 chownfile

4.1

5.4