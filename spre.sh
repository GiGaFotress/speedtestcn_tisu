while true; do
 wget -q -O /dev/null "https://tisu-api.speedtest.cn/api/v2/speedup/reopen?source=www"
 wget -q -O-  "https://tisu-api.speedtest.cn/api/v2/speedup/query?source=www-index"|grep -v -q '\"basic_down\":0' && break
 echo "retry"
 stop_wan && restart_wan
 sleep 15
	
done
