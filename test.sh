  while true; do
  
	wget -q -O-  "https://tisu-api.speedtest.cn/api/v2/speedup/query?source=www-index"|grep  '\"basic_down\":102400'
   echo "restart wan"
  sleep 15
	
done
