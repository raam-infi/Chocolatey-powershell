#!/bin/bash

username="W_YEHUD_TEST"
password="W_YEHUD_TEST"
host="172.30.200.42"     # < ----!!! 42 !!!!
port="1521"
service_name="orc1"


sql.exe -S $username/$password@$host:$port/$service_name <<EOF
lb generate-apex-object  -applicationid 800 -split
EOF


# chmod +x sqlcl_script.sh