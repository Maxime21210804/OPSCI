mkdir system-report
touch system-report/a.info
touch system-report/b.info
touch system-report/c.info

df -h >> system-report/a.info 2>> system-report/a.error
cat /proc/meminfo >> system-report/a.info 2>> system-report/a.error
cat /proc/cpuinfo >> system-report/a.info 2>> system-report/a.error
lspci |grep VGA >> system-report/a.info 2>> system-report/a.error
lspci -v -s 01:00.0 >> system-report/a.info 2>> system-report/a.error

cd ~ ; ls -al >> system-report/b.info 2>> system-report/b.error
cd ~ & ls -al >> system-report/b.info 2>> system-report/b.error
cd ~ && ls -al >> system-report/b.info 2>> system-report/b.error
du -hs >> system-report/b.info 2>> system-report/b.error
du -h --max-depth=1 >> system-report/b.info 2>> system-report/b.error
quota >> system-report/b.info 2>> system-report/b.error
find ~/system-report -name *\.java| wc -l >> system-report/b.info 2>> system-report/b.error

ps -aux |grep ^'whoami' >> system-report/c.info 2>> system-report/c.error
sleep 1664 & >> system-report/c.info 2>> system-report/c.error
ps >> system-report/c.info 2>> system-report/c.error
kill -9 148873 >> system-report/c.info 2>> system-report/c.error
top >> system-report/c.info 2>> system-report/c.error
