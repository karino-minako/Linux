# ファイル名やディレクトリ名を指定して情報を取得することができる。
ls [オプション] [ファイル]

# .で始まる隠しファイル等も全て(All)出力します。
-a

# 長(long)形式で出力します。
-l

# 最終更新時間(time)によってソートして出力します。
-t

# 逆順(Reverse)にソートして出力します。
-r

# etc ディレクトリ上にあるファイルやディレクトリの一覧を表示する
ls /etc/

# /etcディレクトリ内の conf ファイルを絞り込んで表示する
cd /etc
ls *.conf

# ファイル名の文字数が分かっている場合
cd /etc
ls ???.conf

# hosts. のあとに何らかの名前の付くファイルを絞り込み
cd /etc
ls hosts.*

# hosts. のあとに4文字含まれるファイルを絞り込み
cd /etc
ls hosts.????

# hosts. のあとに4文字 + 最後の文字が w であるファイルを絞り込み
cd /etc
ls hosts.????w

# 詳細な情報が表示できる(隠しファイルも表示)
ls -la /home/linuxtext

# ファイルの更新時刻順にソートしてリスト表を表示する
ls -lt /home/linuxtext

# ファイルのコピー
cp [オプション] コピー元 コピー先
cp src-file dst-file

# 処理を行うときに確認をします
-i

# ディレクトリ内にある全てのファイル・ディレクトリに対してコピーができる
-r

# 元のファイルの情報を保存する
-p

# hosts ファイルをコピーする
cd ~
cp /etc/hosts ~

# ファイルを別名としてコピー
cd ~
cp /etc/hosts ~/hosts.newname

# タイムスタンプが同一ファイルとしてコピー
cp -p host.newname host.sametime

# newdir ディレクトリに olddir ディレクトリをコピーする
cp -r olddir/ newdir

# ファイルの移動
mv 移動元ファイル 移動先ファイル

# 処理を行うときに確認する
-i

# 強制的に処理を実行する
-f

# ファイルの名前を変更
mv hosts.newname host.renew

# ファイルを別のディレクトリに移動する(test ディレクトリに host.renew を移動する)
mv hosts.renew test/

# ファイルの削除
rm ファイル名

# 処理を行うときの確認
-i

# 強制的に処理を実行する
-f

# ディレクトリの中のファイルやディレクトリも削除する
-r

# hosts.sametime と ディレクトリを削除
cd ~
rm host.sametime
rm -r test

# 現在のディレクトリの表示
pwd

# ディレクトリの変更
cd [ディレクトリ名]

# 現在いる場所を指定して、ディレクトリの移動
pwd
cd /user

# ディレクトリの作成
mkdir [ディレクトリ名]

# 指定されたディレクトリの上位ディレクトリも作成する
-p

# ディレクトリ dirl の下にディレクトリ dir2 を作り、さらにディレクトリ dir2 の下にディレクトリ dir3を作る
mkdir dir1
mkdir dir1/dir2
mkdir dir1/dir2/dir3

mkdir -p dir1/dir2/dir3

# ディレクトリの削除
rmdir ディレクトリ名

# 指定した階層までのディレクトリを一括で削除
-p

# dir1/dir2ディレクトリを一括で削除
rmdir -p dict1/dict2

# ディレクトリにファイルが存在する場合、ディレクトリを削除する
rm -r direstory/

# カレントディレクトリ(現在いるディレクトリ)
.

# 親ディレクトリ(1階層上のディレクトリ)
..

# ホームディレクトリ(ユーザーの作業開始位置となるディレクトリ)
~

# ルートディレクトリ(ディレクトリ階層の、最上位階層を示す)
/

# ファイルの内容を表示
cat ファイル名

# 行番号を付加して表示します
-n

# ページャを使った表示
more ファイル名
less ファイル名

# moreコマンドの場合
# 次のページに進む
スペース

# 前の一画面に戻る
b

# 次の一画面に進む
f

# 単語を検索する。n キーで検索結果をジャンプする
/単語

# ページャコマンド終了(quit)

# lessコマンドの場合
# 前の行に進む
↑

# 次の行に進む
↓

# 単語を検索する
/単語

# ファイルの検索
find パス -name ファイル名

# コマンドのパスを表示
which コマンド名

# マニュアルの使い方
コマンド --help

ls --help

man passwd
q

# 章末テスト
1.ls
# 正解

2.ls -lt /media/cdrom/
/# 正解

3.pwd
# 正解

4.mv
  ls
# 正解

5.find /etc -name resolv
# 正解