# unbound.conf

![unbound.svg](https://cnlic.com/wp-content/uploads/2015/12/unbound.svg)

[DNSCrypt](https://dnscrypt.org/) is a piece of lightweight software that everyone should use to boost online privacy and security. It works by encrypting all DNS traffic between the user and DNS resolver, preventing any spying, spoofing or man-in-the-middle attacks.

[下载 DNSCrypt](https://download.dnscrypt.org/dnscrypt-proxy/dnscrypt-proxy-win32-full-1.6.0.zip)

[Unbound](https://www.unbound.net/) is a validating, recursive, and caching DNS resolver. 

[下载 Unbound](http://unbound.net/downloads/unbound-1.5.7.zip)

[NirCmd](http://www.nirsoft.net/utils/nircmd.html) is a small command-line utility that allows you to do some useful tasks without displaying any user interface.

[下载 NirCmd 32-bit](http://www.nirsoft.net/utils/nircmd.zip)

[下载 NirCmd 64-bit](http://www.nirsoft.net/utils/nircmd-x64.zip)

解压`nircmd.exe`到`C:\Windows\System32\`或其他系统`path`目录

[下载](https://github.com/CNMan/unbound.conf/archive/master.zip)并解压所有配置文件到`E:\Program Files\unbound\`

启动DNSCrypt

```
nircmd exec2 hide "E:\Program Files\DNSCrypt\" "E:\Program Files\DNSCrypt\dnscrypt-proxy.exe" --local-address=127.0.0.1:9999 --resolver-name=cisco --resolver-address=208.67.220.220:443 --provider-name=2.dnscrypt-cert.opendns.com --provider-key=B735:1140:206F:225D:3E2B:D822:D7FD:691E:A1C3:3CC8:D666:8D0C:BE04:BFAB:CA43:FB79 --tcp-only --max-active-requests=1024 --plugin libdcplugin_example_logging.dll,dns.log --loglevel=7
```

启动Unbound

```
nircmd exec2 hide "E:\Program Files\unbound\" "E:\Program Files\unbound\unbound.exe" -c unbound.conf
```

可以将上面两条启动命令写入`localdns.cmd`，放到`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\`目录，实现开机自动启动

注：安装目录默认为`E:\Program Files\DNSCrypt\`和`E:\Program Files\unbound\`，请根据实际情况修改启动命令和[配置文件](https://github.com/CNMan/unbound.conf/blob/master/unbound.conf#L4)中的相关目录

使用说明可参考[Unbound+DNSCrypt双保险防DNS污染及劫持](https://goo.gl/IG3K27)

常用hosts域名配置在unbound.local-zone.hosts.conf

广告域名和恶意软件域名配置在unbound.local-zone.block.conf

国内域名默认由114.114.114.114和223.5.5.5解析，配置在unbound.forward-zone.China.conf

暗网域名默认由监听在9053端口的TorDNS解析，配置在unbound.forward-zone.Tor.conf，默认不启用

其他域名默认由监听在9999端口的DNSCrypt解析，配置在unbound.forward-zone.Global.conf

常用hosts域名列表参考了[https://github.com/racaljk/hosts](https://github.com/racaljk/hosts)和[https://github.com/lennylxx/ipv6-hosts](https://github.com/lennylxx/ipv6-hosts)

广告域名列表取自[http://pgl.yoyo.org/adservers/serverlist.php?showintro=0](http://pgl.yoyo.org/adservers/serverlist.php?showintro=0)

恶意软件域名列表取自[http://www.malware-domains.com/files/immortal_domains.zip](http://www.malware-domains.com/files/immortal_domains.zip)

国内域名列表取自[dnsmasq-china-list](https://github.com/felixonmars/dnsmasq-china-list)，如果你有其他国内域名需要添加，请直接向`dnsmasq-china-list`项目反馈

在网络设置里面把DNS服务器设置成127.0.0.1

![localdns](https://cnlic.com/wp-content/uploads/2014/09/2014-09-29_233828.png)
