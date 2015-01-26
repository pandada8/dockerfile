if [ ! "$(pgrep ETMDaemon)" ]; then
    /opt/xware/portal
fi
while pgrep 'ETMDaemon'; do
    sleep 10
done
