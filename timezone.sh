#!/bin/bash
echo "Current TimeZone is"
timedatectl
echo ""
echo "Changing Timezone to IST"
echo <redhat> | sudo -S su <root>

timedatectl set-timezone "Asia/Kolkata"
echo "TimeZone sucesfully changed to IST"

