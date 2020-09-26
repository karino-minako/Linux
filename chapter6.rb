vi [ファイル名]
vi /etc/hosts
vi test.txt
:w
"text.txt" 1L, 5C 書込み
vi text.txt
:wq
vi test.txt
vi text.txt
:q!
vi text.txt
vi editfile.txt
i
apple
:w
Orange
:q
:wq
vi editfile.txt
Banana
:q!
vi editfile.txt
i a
vi viinsert.txt
i
text
a
TEST
I
1234
A
6789
:wq
vi vimove.txt
h l
j k
0 $
vi /var/log/dmesg
:10 :1
vi vicutpaste.text
x x p
vi victlinepaste.txt
i dd p P
vi vicopypaste.txt
yy p
gg 3yy p
vi vicutpaste.txt
x u :q! vi vicutpaste.txt yy p u :wq
/文字列
vi /var/log/dmesg
/CPU n N
:対象の行 s/検索文字列/置換文字列/オプション
:1s/old/new
:2s/old/new/g
:%s/old/new/g
:%s/old/new/gc
cat vicutpaste.txt
:1s/banana/BANANA/g
:1s/orenge/ORANGE/
:2s/orenge/OREAGE/g
:3s/banana/BANANA/
:%s/melon/*MELON*/g
:%s/melon/@LEMON@/gc

# 章末テスト
1.gg
  3yy
#3yy

2./abc

3.:q!

4.:100
#100G

5.:%s/高野豆腐/絹ごし豆腐/g

