read -p "Enter Your Key Here " random
salary=0
isFulltime=2
isParttime=1
isAbsent=0
perHourCost=100
logHours=8

case $random in
   $isFulltime)
       salary=$((logHours*perHourCost))
       echo "Employee Joined As a Full-Time"
       echo "Payment Is : $salary"
      ;;
   $isParttime)
      salary=$((logHours*perHourCost))
      salary=$((salary/2))
      echo "Employee Joined As a Part-Time"
      echo "Payment Is : $salary"
      ;;
   $isAbsent)
      echo "Employee Absent"
      echo "Payment Is : $salary"
      ;;
   *)
     echo "Please Check Your Input :( It's Invalid"
     ;;
esac