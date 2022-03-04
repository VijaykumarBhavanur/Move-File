for file in  `ls *.txt`
do
	folderName=`echo $file | awk -F . '{print $1}'`
	if [ -d  $folderName ]
	then
	cp $file $folderName
	else
	 mkdir $folderName
	cp $file $folderName
	fi
done
