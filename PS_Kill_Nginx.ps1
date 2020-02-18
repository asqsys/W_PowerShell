.\nginx.exe -s stop #nginx -s stop	fast shutdown
.\nginx.exe -s reload

ps -Name nginx
kill -Name nginx

#.\nginx.exe -s quit	#graceful shutdown
#.\nginx.exe -s reload	#changing configuration, starting new worker processes with a new configuration, graceful shutdown of old worker processes
#.\nginx.exe -s reopen	#re-opening log files