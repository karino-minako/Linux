ping 192.168.1.1
ping lpi.jp -c 3

traceroute lpi.jp
tracepath lpi.jp

ip a
nmcli device

cat /etc/sysconfig/network-scripts/ifcfg-lo

ip addr show dev eno0s3
vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
systemctl restart network.service
ip addr show dev enp0s3

ip route
ip route add 192.168.2.0/24 via 192.168.1.1 dev enp0s3
ip route
ip route del 192.168.2.0/24 via 192.168.1.1
ip route

nmcli d show enp0s3
nslookup lpi.jp

ss -at
ss -au

systemctl status firewalld.service

firewall-cmd --list-all
firewall-cmd --list-services

firewall-cmd --add-service=http
firewall-cmd --add-service=https --permanent
firewall-cmd --list-services
firewall-cmd --list-services --permanent
systemctl restart firewall.service
firewall-cmd --list-services
firewall-cmd --list-services --parmanent

systemctl stop firewall.service
systemctl disable firewalld.service
systemctl mask firewalld.service
systemctl status firewalld.service

yum -y install iptables-service
systemctl start iptables.service
systemctl enable iptables.service
stemctl status iptables.service
iptables -L
vi /etc/sysconfig/iptables
-A INPUT -p tcp -m state --state NEW -m tcp --dport 80 -j ACCEPT
-A INPUT -p tcp -m state --state NEW -m tcp --dport 443 -j ACCEPT
systemctl restart iptables.service
iptables -L

# 章末テスト
1.1

2.動作：ターゲットや途中のゲートウェイへデータを送り、ゲートウェイから返答が戻ってくる時間を表示する。
  利用方法：traceroute ターゲット
  # 動作：送信先までに経由するゲートウェイを表示する。
  # 利用方法：pingコマンドで送信先から正常なレスポンスがないとき、経由ゲートウェイのルーティングが正しいか調べる。

3.ip a

4.# /etc/resolv.conf
  # nameserver 8.8.8.8

5.# /etc/hosts.deny
  # sshd : 192.168.100.20
