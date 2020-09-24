# ls の結果を出力をリダイレクトして、ファイルに書き込む
ls > ls-output

cd /etc
ls > ~/ls-output
cat ~/ls-output
cat ~/ls-output

# cat コマンドによるファイル作成
cat > cat-output
Hello
This is cat redirect.
#[ctrl] D を押す

# エラー出力を ls-l-output にリダイレクト
ls -l tekitou 2> ls-loutput

# 標準出力と標準エラー出力を1つのファイルに出力
ls -l tekitou > ls-l-output-second 2>&1
ls -l xxx /user/bin 2>&1 | less

ls -l /usr/bin

# パイプの前のコマンドを後ろのコマンドの標準入力とすることができる(/urs/bin のファイル一覧を less でページングしながら表示)
ls -l /user/bin | less

# ファイルの中からデータを検索する。また、| grep とすることで、標準入力から入ったデータに対し検索を行うことも可能です。
grep [オプション] 検索条件 [指定ファイル]

# 正規表現
^　# 行頭を表す
$ # 行末を表す
. # 任意の一字を意味する
* # 直前文字の0回以上の繰り返しを意味する
[...] # ..の中の任意の一字を意味する
[^...] # ..の文字が含まれないことを意味する
¥ # 正規表現の記号をエスケープする

# 正規表現の利用例
^a # a で始まっている行
b$ # b で終わっている行
a.b # aとbの文字に1字入っている
[ab]ab # aもしくはbに続くab(aab,bab)
[^ab]ab # aもしくはbで始まらない(not)で、abが続くもの(例: xab,zab等)

# /etcディレクトリにあるファイルでabcという文字列を含むものを検索する
grep abc /etc/*

# /etcディレクトリにあるファイルで行の先頭がxyで始まっているものを検索する
grep ^xy /etc/*

# 文字列を検索パターンとして扱う
-e

# 検索パターンと入力ファイルの双方で、英大文字と小文字の区別を行わない。
-i

# 検索パターンとマッチしなかった行を選択する
-v

# /etcディレクトリにある、abcという文字列を含むファイル
grep abc /etc/*

# /etc ディレクトリにある、大文字または小文字のhostnameという文字列を含むファイル
grep -i hostname /etc/*

# /etcディレクトリにある、abcという文字列を含むがtcpという文字列は含まないファイル
grep abc /etc/* | grep -v tcp

# ファイル名がdで終わるファイルを/usr/binから検索
ls /usr/bin/ | grep -e d$

# 章末テスト
1.grep -e ^[ab]
# 正解

2.ファイル名がaで始まって、.で終わるファイルを/usr/binから検索
# /usr/bin以下のaから始まる3文字のディレクトリ名、ファイル名が表示される

3.ls /etc | grep -e conf$
# ls /etc | grep conf$

4.ls -l > ls-result
# ls -l >> ls-result

5.chkconfig --list | grep -e iptables
# chkonfig --list | grep iptables
