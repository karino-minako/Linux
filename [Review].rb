# 3章末テスト
# 1.ファイルやディレクトリを参照するコマンドを記述しなさい
ls

# 2./media/cdromの中身を最新更新順に並べて表示するコマンドを選べ
ls -lt /media/cdrom

# 3.今いるパスを表示するコマンドを記述せよ
pwd

# 4./home/userフォルダにあるtestというファイルを/root/backupフォルダに移動します。以下の空欄に当てはまるコマンドを書け
(mv) /home/user/test /root/backup
(mv) /root/backup
# mv
# ls

# 5.パス/etcの中のファイルで、ファイル名の一部に「resolv」という文字列が含まれるファイルを検索するコマンドを記述せよ
ls /etc *resolv*
#find /etc -name resolv

# 4章末テスト
1.4

2.ファイル名がaで始まって、.で終わるファイルを/user/binから検索する
# aから始まり残りの２文字が任意（合計３文字）の名前をしているファイル、またはディレクトリの一覧が表示される

3.ls /etc | grep -e conf$
# ls /etc | grep conf$

4.ls -l > ls-result

5.ls chlconfig --list | grep -e ipatable/*
# chkconfig --list | grep iptables

# 5章末テスト
1.-k -n 3
# -n -k 3

2.red
  blue
  red
  blue

3.diff file1 file2

4.test1とtest2の差分がない

5.tail -n 8

# 6章末テスト
1.3yy

2./abc

3.:q!

4.:100

5.%s/高野豆腐/絹ごし豆腐/g
# :%s/高野豆腐/絹ごし豆腐/g

# 7章
grep 1001 /etc/passwd
useradd -g users -u 1001 penguin
grep penguin /etc/passwd

grep penguin /etc/passwd
usermod -c "LPI-Japan Certification" penguin
grep penguin /etc/passwd
grep penguin /etc/passwd
userdel penguin
grep penguin /etc/passwd

grep 1001 /etc/group
groupadd -g 1001 linuc
grep linuc /etc/group

grep linuc /etc/group
groupmod -n linux linuc
grep linux /etc/group

grep 1001 /etc/group
groupadd -g 1001 linux
grep linux /etc/group
groupdel linux
grep 1001 /etc/group

passwd penguin
exit

cat /var/log/messages
su -
cat /var/log/messages

visudo
su -
usermod -G wheel penguin
vigr
visudo
su -penguin
sudo visudo

#7章章末テスト
1.passwdコマンドでパスワードを登録する

2.userdel user2

3.groupadd penguin

4.passwd penguin

5.suはカレントディレクトリを変更せずにrootユーザーでログインする
  su - はカレントディレクトリを変更した上でrootユーザーでログインする

# 8章
touch user
ls -l user
chown nobody user
su
chown nobody user
ls -l user
touch groups
ls -l groups
chgrp nobody group
su
chgrp nobody groups
ls -l groups

# 8章章末テスト
1.4
# 3

2.chmod 755 chownfile

3.chmod 644 chownfile

4.1

5.4

# 9章
cat BBB.sh
unset ABC
env | grep ^abc

echo "Value of ABC is ¥ABC¥".
echo "Value of ABC is ¥ABC."

#!/bin/bash
abc=xyz
echo $abc
echo $abc
./set.sh
echo $abc
souce set.sh

# 9章
#!/bin/bash

case $1 in
  a|A)
    echo "引数にaまたはAが入力されました";;
  b|B)
    echo "引数にbまたはBが入力されました";;
esac

case $1 in
  1)
    echo "引数に1が入力されました";;
  2)
    echo "引数に2が入力されました";;
  *)
    echo "　1,2以外が入力されました";;
esac

./defaultcase.sh 1

#!/bin/bash

count=1
while [ $count -le 10 ]
do
  echo "この処理は$count回実行されました"
  count=`expr $count + 1`
done

cat ./sample.sh
while true
do
  echo "Continue? (y/n)"
  read input
  case $input in
    n) break
       ;;
    y) continue
       ;;
    *) echo "Please input y or n."
       ;;
    esac
done

sh -x ./sample.sh

# 10章末テスト
1.$LPI

2.slse
  fi

3.done

4.
# age:として入力を促される
# 20以上の値を入れると' you can drink.'
# 20未満の値を入れると' you cannot drink.'

if [ age -ge 20 ]; than
  echo ' you can drink.'
elif [ age -lt 0 ]; than
  echo ' you cannot drink.'
fi

#!/bin/bash

# echo -n age:; read age

# if [ age -ge 20 ]; than
#   echo ' you can drink.'
# else
#   echo ' you cannot drink.'
# fi

5.sh -x シェルスクリプト名

# 10章
ip addr show dev enp0s3
vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
systemctl restart network.service
ip addr show dev enp0s3

ip route add 192.168.2.0/24 via 192.168.1.1 dev enp0s3
ip route
ip route del 192.168.2.0/24 via 192.168.1.1
ip route
nslookup lpi.jp

firewall-cmd --add-service=help
firewall-cmd --add-service=https --permanent
firewall-cmd --list-services
firewall-cmd --list-services --permanent
systemctl restart firewalld.service
firewall-cmd --list-services
systemctl stop firewalld.service
systemctl mask firewalld.service
yum -y install iptables-services
systemctl start iptables.service
systemctl enable iptables.service
iptables -L
vi /etc/sysconfig/iptables
systemctl restart iptables.service
iptables -L

# 10章末テスト
1.1

2.動作：ターゲットや途中のゲートウェイへデータを送り、ゲートウェイから返答が戻ってくる時間を表示する。
  # 送信先までに経由するゲートウェイを表示する
  利用方法：traceroute ターゲット
  # pingコマンドで送信先から正常なレスポンスがないとき、経由ゲートウェイのルーティングが正しいか調べる

3.ip a

4.# vi /etc/resolv.conf
  # nameserver 8.8.8.8


5.# vi /etc/hosts.deny
  # sshd : 192.168.100.20
