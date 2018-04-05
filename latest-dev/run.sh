#!/bin/bash
# kill any running wineserver...
/opt/wine-devel/bin/wineserver -k || true
# wait for them to die..
/opt/wine-devel/bin/wineserver -w
# start a new one
/opt/wine-devel/bin/wineserver -p


echo Waiting for wineserver to start
for number in 1 2 3 4 5
do 
  sleep 1
  echo $number
done
# Run something...
echo "Running trivial command to initialize wineserver context"
echo "echo It works; exit" | /opt/wine-devel/bin/wine64 cmd
# Hope that that's enough...
make dev