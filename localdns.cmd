@ECHO OFF
REM START DNSCrypt
nircmd exec2 hide "E:\Program Files\DNSCrypt\" "E:\Program Files\DNSCrypt\dnscrypt-proxy.exe" --local-address=127.0.0.1:9999 --resolver-name=cisco --resolver-address=208.67.220.220:443 --provider-name=2.dnscrypt-cert.opendns.com --provider-key=B735:1140:206F:225D:3E2B:D822:D7FD:691E:A1C3:3CC8:D666:8D0C:BE04:BFAB:CA43:FB79 --tcp-only --max-active-requests=1024 --plugin libdcplugin_example_logging.dll,dns.log --loglevel=7

REM START Unbound
nircmd exec2 hide "E:\Program Files\unbound\" "E:\Program Files\unbound\unbound.exe" -c unbound.conf
