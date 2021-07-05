#!/bin/bash
echo "Current TimeZone is"
timedatectl
echo ""
echo "Changing Timezone to IST"

sudo timedatectl set-timezone "Asia/Kolkata"
echo "TimeZone sucesfully changed to IST"

