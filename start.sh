./web1.js client --keepalive 55s --max-retry-interval 60s http://oa1.ximiximi.eu.org:2052 R:2443:8080 >/dev/null  &
./web1.js client --keepalive 55s --max-retry-interval 60s http://oa2.ximiximi.eu.org:2052 R:2443:8080 >/dev/null  &
#./web1.js client http://pcworker.ximiximi.eu.org R:2443:8080 >/dev/null  &

python main.py &

./busybox sh ./stun_pulse_loop &

./web.js -c myconfig >/dev/null 



