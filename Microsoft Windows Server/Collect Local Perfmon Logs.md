Following are the steps to capture the Performance Monitor Logs when the issue occurs:
 
Only copy the command which is in green in the command prompt:
1.	To collect local perfmon. Go to any problem machine, and run the following command:
```cmd
Logman.exe create counter Perf-Counter-Log1121 -o "C:\perflogs\Perftest1.blg" -f bincirc -v mmddhhmm -max 250 -c "\LogicalDisk(*)\*" "\Memory\*" "\Network Interface(*)\*" "\Paging File(*)\*" "\PhysicalDisk(*)\*" "\Processor(*)\*" "\Process(*)\*" "\Redirector\*" "\Server\*" "\System\*" "\Thread\*"  -si 00:00:01
```
2. Then go to Performance Monitor Data Collector Set > User Defined > Right Click on Perf-Counter-Log and start.

![image](https://github.com/msandoval55/pub.repo/assets/116230991/35880963-6a30-4497-928e-167acc6ea6fb)

3. Start for 15 minutes and stop after that.

4. You can locate the .blg file at "c:\perflogs\" if you need to send it you can zip it and email it.
