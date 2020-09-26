# ファイルのタイムスタンプの変更
touch [オプション] ファイル名

ls -l hosts.bak
touch hosts.bak
ls -l hosts.bak
touch -t 06030800 hosts.bac

ls -l touched-file
touch touched-file
ls -l touched-file

#ファイルの一部の取得(head,tail)
head [オプション] ファイル名

head FILE
cat FILE | head -
cat FILE | head

tail [オプション] ファイル名
tail FILE
cat FILE | tail -
cat FILE | tail

tail -f ファイル名

man less > ~/manual-less
tail manual-less
tail -n 5 manual-less
tail -f manual-less
echo 'Hello' >> manual-less
tail -f manual-less

sort [オプション] ファイル名
cat > score
sort score
sort -r score
sort -k 2 score
sort -k 2 -r score
sort -k 3 score
sort -n -k 3 score
sort -n -r -k score

uniq ファイル名
cat > uniq-sample
uniq uniq-sample

tr 文字列1 文字列2
cat FILE | tr abc abc
cat translate | tr on ON
cat translate | tr on ON > translate2
cat translate2

diff [オプション] ファイル1 ファイル2

diff file1 file2
diff -c file1 file2
diff -u file1 file2
echo "test text" > file1
echo "test text" > file2
echo "new line" >> file2
diff file1 file2
diff -u file1 file2
diff -c file1 file2
echo "overwrite text" > file2
echo "new line" >> file2
diff file1 file2
diff -u file1 file2

# 章末テスト
1.-n -k 3

2.red
  blue
  red
  blue

3.diff file1 file2

4.file1とfile2の内容が全く同じである。

5.tail -n 8
