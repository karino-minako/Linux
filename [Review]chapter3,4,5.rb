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
