#backup file   
echo "Enter filename name"
read filename
if [[ ! -f "/home/e1027/manbkp/$filename" ]]
then
    echo "File doesn't exist. Creating now"
    touch /home/e1027/manbkp/$filename
    echo "File created"
    else
        echo "File exists"
fi

echo ""
echo -n "Enter soruce file name :/home/e1027/manbkp/ "
read src
echo ""
echo -n "/opt/backup "
targ="/opt/backup/"
 
if [ ! -f /home/e1027/manbkp/san.txt $src ]
then
	echo "File /home/e1027/manbkp/san.txt $src does not exists"
	exit 1
elif [ -f /opt/backup/$targ ]
then
	echo "File/opt/backup/$targ exist, cannot overwrite"
	exit 2
fi
 
# copy file 
echo ""
echo "copy the file"
cp $src/home/e1027/manbkp/san.txt $targ/opt/backup
 
echo ""
echo "status of file"
status=$filename
 
if [ $status -eq 0 ]
then
	echo 'File copied successfully'
else
	echo 'Problem copuing file'
fi

