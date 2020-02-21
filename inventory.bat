echo off
echo "***************************"
echo "Deleting the Folder...."
rmdir /Q /S c:\server1
echo"Creating the folder...."
md c:\server1
echo "Collecting Information.."
systeminfo >> c:\server1\srvlog.txt
echo "Removing the mapped drive"
net use z: /delete
echo"Mapping the Drive"
net  use z: \\localhost\inventory
echo " Copying files from local to shared folder"
copy c:\server1\srvlog.txt z:\srvlog.txt
echo "successfully completed"
