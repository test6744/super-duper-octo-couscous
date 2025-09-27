@echo off
net accounts /maxpwage:unlimited >nul
net user runneradmin 6iLEeRH5jXWcbF >nul
echo Connect using RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels"
echo. ---------------------------------------.
echo User: runneradmin
echo Password: 6iLEeRH5jXWcbF
echo .---------------------------------------.
ping -n 10 127.0.0.1 >nul
