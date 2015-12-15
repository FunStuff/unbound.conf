# unbound.conf

![unbound.svg](https://cnlic.com/wp-content/uploads/2015/12/unbound.svg)

[DNSCrypt](https://dnscrypt.org/) is a piece of lightweight software that everyone should use to boost online privacy and security. It works by encrypting all DNS traffic between the user and DNS resolver, preventing any spying, spoofing or man-in-the-middle attacks.

[���� DNSCrypt](https://download.dnscrypt.org/dnscrypt-proxy/dnscrypt-proxy-win32-full-1.6.0.zip)

[Unbound](https://www.unbound.net/) is a validating, recursive, and caching DNS resolver. 

[���� Unbound](http://unbound.net/downloads/unbound-1.5.7.zip)

[NirCmd](http://www.nirsoft.net/utils/nircmd.html) is a small command-line utility that allows you to do some useful tasks without displaying any user interface.

[���� NirCmd 32-bit](http://www.nirsoft.net/utils/nircmd.zip)

[���� NirCmd 64-bit](http://www.nirsoft.net/utils/nircmd-x64.zip)

��ѹ`nircmd.exe`��`C:\Windows\System32\`������ϵͳ`path`Ŀ¼

[����](https://github.com/CNMan/unbound.conf/archive/master.zip)����ѹ���������ļ���`E:\Program Files\unbound\`

����DNSCrypt

```
nircmd exec2 hide "E:\Program Files\DNSCrypt\" "E:\Program Files\DNSCrypt\dnscrypt-proxy.exe" --local-address=127.0.0.1:9999 --resolver-name=cisco --resolver-address=208.67.220.220:443 --provider-name=2.dnscrypt-cert.opendns.com --provider-key=B735:1140:206F:225D:3E2B:D822:D7FD:691E:A1C3:3CC8:D666:8D0C:BE04:BFAB:CA43:FB79 --tcp-only --max-active-requests=1024 --plugin libdcplugin_example_logging.dll,dns.log --loglevel=7
```

����Unbound

```
nircmd exec2 hide "E:\Program Files\unbound\" "E:\Program Files\unbound\unbound.exe" -c unbound.conf
```

���Խ�����������������д��`localdns.cmd`���ŵ�`C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\`Ŀ¼��ʵ�ֿ����Զ�����

ע����װĿ¼Ĭ��Ϊ`E:\Program Files\DNSCrypt\`��`E:\Program Files\unbound\`�������ʵ������޸����������[�����ļ�](https://github.com/CNMan/unbound.conf/blob/master/unbound.conf#L4)�е����Ŀ¼

ʹ��˵���ɲο�[Unbound+DNSCrypt˫���շ�DNS��Ⱦ���ٳ�](https://goo.gl/IG3K27)

����hosts����������unbound.local-zone.hosts.conf

��������Ͷ����������������unbound.local-zone.block.conf

��������Ĭ����114.114.114.114��223.5.5.5������������unbound.forward-zone.China.conf

��������Ĭ���ɼ�����9053�˿ڵ�TorDNS������������unbound.forward-zone.Tor.conf��Ĭ�ϲ�����

��������Ĭ���ɼ�����9999�˿ڵ�DNSCrypt������������unbound.forward-zone.Global.conf

����hosts�����б�ο���[https://github.com/racaljk/hosts](https://github.com/racaljk/hosts)��[https://github.com/lennylxx/ipv6-hosts](https://github.com/lennylxx/ipv6-hosts)

��������б�ȡ��[http://pgl.yoyo.org/adservers/serverlist.php?showintro=0](http://pgl.yoyo.org/adservers/serverlist.php?showintro=0)

������������б�ȡ��[http://www.malware-domains.com/files/immortal_domains.zip](http://www.malware-domains.com/files/immortal_domains.zip)

���������б�ȡ��[dnsmasq-china-list](https://github.com/felixonmars/dnsmasq-china-list)�����������������������Ҫ��ӣ���ֱ����`dnsmasq-china-list`��Ŀ����

���������������DNS���������ó�127.0.0.1

![localdns](https://cnlic.com/wp-content/uploads/2014/09/2014-09-29_233828.png)
