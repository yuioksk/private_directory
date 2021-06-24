#backup files
echo ""
echo "spath and d path"
src="/home/e1027/saranya/"
targ="/opt/backup/"

echo ""
echo "Enter Directory Name"
read dirname
if [ ! -d "/home/e1027/saranya/$dirname" ]
then
    echo "File doesn't exist. Creating now"
    mkdir /home/e1027/saranya/$dirname
    echo "File created"
else
    echo "File exists"
fi

echo""
echo "spath to d path"
sudo cp -av /home/e1027/saranya/bkp.zip /opt/backup

made changes
