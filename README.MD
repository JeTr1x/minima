This is simple bash script to fix node-id changing. It checks your id every 30 seconds and if it doesnt match yours, change it back

# How to run
```
# Clone minima-fix-id.sh to your server
wget https://raw.githubusercontent.com/isafin509/minima/main/minima-fix-id.sh
# Open file with nano or other text editor
nano minima-fix-id.sh
# Replace YOUR_NODE_ID with your minima node-id
# It must look like this
nid="72bxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxds4"
# If you have minima running on different port also change port number (default is port=9002)
# Save changes and exit
```
Next you have to make this script executable and run in background. I use nohup for this purpose
```
# Make script executable
chmod +x minima-fix-id.sh
# And run in background using nohup
nohup ./minima-fix-id.sh > minima-fix-id.log 2>&1 &
```
Logs of running script will be written to minima-fix-id.log file
You can check logs with following command 
```
cat minima-fix-id.log
```
## My Discord
If you have questions/suggestions feel free to DM me on Discord: JeTrix#8775
