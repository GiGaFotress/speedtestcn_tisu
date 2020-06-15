  while true; do
  
	wget -q -O-  "https://tisu-api.speedtest.cn/api/v2/speedup/query?source=www-index"|grep -v '\"basic_down\":0'
   echo "restart wan"
  sleep 15
	
done
