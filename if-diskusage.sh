
rootusage=`df -h / |tail -1 | awk '{print $5}'`

echo $rootusage


if [ $rootusage -gt 10 ]

then 

	echo 'root usage is more than 10%'



else 
	echo 'root usage is less than 10%'


fi

