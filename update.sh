#!/bin/bash

nowyear=$(date +%Y)
nowmonth=$(date +%m)
nowday=$(date +%d)
nowtime=$(date "+%Y_%m_%d %H:%M:%S")
echo "Start time :${nowtime}"
if [ ! -d online ]; then
	mkdir -p online
	echo  "online文件夹已创建"
fi








re="swr.cn-east-2.myhuaweicloud.com/yb7/([^:]+):([^ ]+)"
al="registry.cn-beijing.aliyuncs.com/lanjing/([^:]+):([^ ]+)"
metadata=$(kubectl --kubeconfig $KUBECONFIG_PROD get deploy  -o jsonpath='{..metadata..name}')

#echo ${metadata[0]["name"]}
deployall=($metadata)  
versionall=[]
for  ((i=0; i<${#deployall[*]}; i++))
do
	imageStr=$(kubectl --kubeconfig $KUBECONFIG_PROD get deploy ${deployall[$i]}  -o jsonpath='{..image}'); 
	#echo "${deployall[$MY_FILE_NAME1]} online current version:"
	if [[ $imageStr =~ $re ]]; then 
		versionall[$i]=${BASH_REMATCH[2]}
 	   	echo  "${i} ：${deployall[$i]} --------- now online version: ${BASH_REMATCH[2]}"
		#echo "${deployall[$MY_FILE_NAME1]} online current version: ${BASH_REMATCH[2]}"; 
	fi
	
done
read -p "请输入你需要上线的deployment的编号：" MY_FILE_NAME1
deployment=${deployall[$MY_FILE_NAME1]}
if [  ${deployment} ]; then
	echo "you select   ${deployment} deployment"

	imageStr=$(kubectl --kubeconfig $KUBECONFIG_TEST get deploy ${deployment} -o jsonpath='{..image}')
	 
	if [[ $imageStr =~ $re ]]; then 
		oldversion="${deployment} test now deployment version:  ${BASH_REMATCH[2]}"
	fi
	echo ${oldversion}
	
else
	echo "you select error "
	exit
fi

 
status=1
i=1
while  ((status==1))
do
	fileroot=online/${deployment}-${nowyear}${nowmonth}day${nowday}online00${i}.log
	
	if [ ! -e ${fileroot} ]; then
		((status += i))
		#echo  "${fileroot}文件不存在"
	fi
	((i++))
done

read -p "请输入你线上的版本号：" MY_FILE_NAME2




 


while true
do
	read  -p "Are You Sure? Update deployment version ${MY_FILE_NAME2}  [Y/n] " input
	case $input in
	    [yY])
			echo "Begin...."
			break
			;;
	    [nN])
			echo "You select No...."
			exit
			;;
	    *)
			echo "You select Error...."
			;;
	esac 
done


deployment=${deployall[$MY_FILE_NAME1]}

  
if [  ${BASH_REMATCH[2]} ]; then
	echo "Update deployment time ${nowtime}" >> $fileroot
	echo ${oldversion}  >> $fileroot
	echo "$deployment online old deployment version: ${versionall[$MY_FILE_NAME1]}"  >> $fileroot
	echo "$deployment update deployment version: $MY_FILE_NAME2"  >> $fileroot
	kubectl --kubeconfig $KUBECONFIG_PROD  set image deployment/$deployment $deployment=100.125.17.64:20202/lanjing/$deployment:$MY_FILE_NAME2
	kubectl --kubeconfig $KUBECONFIG_PROD  get pod -l app=$deployment
else
	echo not find  	deployment
fi