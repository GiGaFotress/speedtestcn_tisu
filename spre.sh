 while true; do
  wget -O- "https://tisu-api.speedtest.cn/api/v2/speedup/reopen?source=www"
	wget -q -O-  "https://tisu-api.speedtest.cn/api/v2/speedup/query?source=www-index"|grep -v '\"basic_down\":0' && break
	
  stop_wan && restart_wan
  sleep 15
	
done
