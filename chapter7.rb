useradd ユーザー名
useradd owl
ls /home/
grep 1001 /etc/passwd
useradd -g users -u 1001 penguin
useradd -g users -u 1001 penguin
grep penguin /etc/paddwd

usermod ユーザー名

grep penguin /etc/passwd
usermod -c "LPI-Japan Certfication" penguin
grep penguin /etc/passwd

userdel ユーザー名
grep penguin /etc/passwd
userdel penguin
grep penguin /etc/passwd

groupadd グループ名
grep 1001 /etc/group
groupadd -g 1001 linuc
grep linuc /etc/group

groupmod [-g gid] [-n new-group-name] 変更対象のグループ
groupmod -n penguin dolphin
groupmod -g 777 penguin
grep linuc /etc/group
groupmod -n linux linuc
grep linux /etc/group

groupdel グループ名
grep 1001 /etc/group
groupadd -g 1001 linux
grep linux /etc/group
groupdel linux
grep 1001 /etc/group

passwd [ユーザー名]
passwd penguin

su
su - [ユーザ]
cat /var/log/messages
su -
cat /var/log/messages
sudo コマンド
sudo cat /var/log/message
visudo
su -
usermod -G wheel penguin
vigr
visudo
su - penguin
sudo visudo

# 章末テスト
1.パスワード
# passwdコマンドでパスワードを登録する

2.userdel penguin
# userdel user2

3.groupadd penguin

4.passwd penguin

5.suはカレントディレクトリを変更せずにrootユーザーでログインする。
  su - はカレントディレクトリをrootのホームディレクトリに変更してログインする。
