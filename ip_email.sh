#!/bin/bash
#program:
#	this program send e-mail to my_mail-box.
#History:
#	YanZeng first released 20170131
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

aim_email="yzeng_linux_log@163.com"

public_ip="`curl -s http://ddns.oray.com/checkip 2>&1`"
echo -e "public ip=${public_ip} \n \n `ifconfig`" | mail -s "ip is `date`" ${aim_email}

exit 0


