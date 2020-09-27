!/bin/bash

vi lsdate.sh
#!/bin/bash
ls
date
ls -l lsdate.sh
chmod u+x lsdate.sh
ls -l lsdate.sh
./lsdate.sh

vi lsdate
# vi lsdate.sh
ls
#date
./lsdate.sh

echo [オプション] 文字列
echo Message test

abc=123
echo $abc
abc[0]=123
abc[1]=456
echo ${abc[0]}
index=1
echo ${abc[$index]}

export abc
export xyz=234
cat BBB.sh
#!/bin/bash
xxx=123
export yyy=234
echo xxx=$xxx in BBB.sh
echo yyy=$yyy in BBB.sh
./CCC.sh
cat CCC.sh
#!/bin/bash
echo xxx=$xxx in CCC.sh
echo yyy=$yyy in CCC.sh
//BBB.sh

read 変数名
echo $abc
read abc
echo $abc

set
set | grep ^abc
unset sbc
set | grep ^abc

env
env | grep ^ABC
unset ABC
env | grep ^abc

ABC=123
echo 'Value of ABC is $ABC.'
echo "Value of ABC is $ABC."
XYZ=`date`;
echo "lt is $XYZ now."
echo "lt is `date` now."

cat args.sh
#!/bin/bash
echo '$1:' $1;
echo '$2:' $2;
echo '$3:' $3;
echo '$0:' $0;
echo '$#:' $#;
./args.sh aaa bbb ccc

cat argsshift.sh
#!/bin/bash

echo '$1:' $1;
echo '$2:' $2;
echo '$3:' $3;
shift
echo '$1:' $1;
echo '$2:' $2;
./argshift.sh aaa bbb ccc

ABC=123
echo "Value of ABC is "$ABC"."
echo "Value of ABC is ¥"ABC¥"."
echo 'Value of ABC is "$ABC".'
echo "Value of ABC is ¥$ABC."

echo "Iam a cat. As yet I have no name."
echo "Iam a cat.¥
As yet I have no name."
vi escape.sh
#!#bin/bash
echo "Iam a cat. ¥
As yet I have no name."
/.escape.sh
echo -e "I am a cat. ¥nAs yet I have no name¥041"

cat set.sh
#!/bin/bash
abc=xyz
echo $abc
echo $abc
/.set.sh
echo $abc

cat case.sh
#!/bin/bash
case $1 in
        a|A)
           echo "引数にaまたはAが入力されました";;
        b|B)
           echo "引数にbまたはBが入力されました";;
esac
./case.sh a
./case.sh B
cat defaultcase.sh
#!/bin/bash
case $1 in
        1)
           echo "引数に1が入力されました";;
        2)
           echo "引数に2が入力されました";;
        *)
           echo "1,2以外が入力されました";;
esac
./defaultcase.sh 1
./defaultcase.sh 2
./defaultvase.sh 0

for i in a b c d
do
 echo $1
done

cat loop.sh
#!/bin/bash
count=1
while [$count -le 10 ]
do
  echo "この処理は$count回実行されました"
  count=`expr $count + 1`
done

select name in "apple" "banana" "orange"
do
  echo "You selected $name";
done

cat ./sample.sh
while true
do
  echo "Continue? (y/n)"
  read input
  case $input in
    n) break
       ;;
    y) continu
       ;;
    *) echo "Please input y or n."
       ;;
    esac
done
./sample.sh

sh -x ./sample.sh

# 章末テスト
1.$LPI

2.else
  fi

3.done

4.each "年齢を入力してください"
  age = input
  case age in
           age -ge 20
              echo "you can drink."
           age -le 20
              echo "you cannot drink."
  esac
# echo -n 'age:'
# read age

# if  [ "$age" -ge 20 ]; then
#      echo "you can drink.";
# else
#      echo "you cannot drink.";
# fi

5.sh -x [シェルスクリプト]
# sh -x コマンドでシェルスクリプトを実行する

