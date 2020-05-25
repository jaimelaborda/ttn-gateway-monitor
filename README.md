# ttn-gateway-monitor
Monitors your TTN gateways and triggers an IFTTT notification if the gateway is down.

Ussage example:
```sh
docker run -d -e 'IFTTT_KEY=xxxxxxxxxxxxxxxxxx' -e 'IFTTT_EVENT=gateway_test' -e 'MONITOR_TIMEOUT=5' -e 'TTN_KEY=exxxxxxxxxxxxxxxxxxxxx' -v /home/jaime/git/ttn-gateway-monitor/gateways.conf:/gateways.conf ttn-gateway-monitor
```
