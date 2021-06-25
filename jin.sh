src="/home/e1027/manbkp/san.txt"
targ="/opt/backup/"

if [ ! -f $src ]
then
	echo "File $src does not exists"
	exit 1
elif [ -f $targ ]
then
	echo "File $targ exist, cannot overwrite"
	exit 2
fi
 
# copy file 
sudo cp $src $targ
 
status=$?
 
if [ $status -eq 0 ]
then
	echo 'File copied successfully'
else
	echo 'Problem copuing file'
fi

echo "this change is done in  merge test folder"

