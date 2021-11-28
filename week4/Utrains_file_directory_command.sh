##### Files and Directories access : all commands note #########

## Envi: Ubuntu 20.04

# sudo mode : super user root user,  create user , password
sudo su
useradd student   # creating one user call student
password student
"school1"
cat /etc/shadow

## connect with another user
su student 
Password:school1
## or 
sudo su student
id
cat /etc/shadow ## here you can get an error say Permission Denied 
exit  

# connecting with the root user
su root
Password: "vagrant"
# Or
sudo su

## creating the files using root user : creating 4 files, creating 4 folders
touch file2 review sucess hardwork 
mkdir prayer e-utrain class dir 
#list of directory contains (04 four commands)
ls 
ls -a
ls -l 
ll  # please Pick one link, and explain it after this...

## Modify Permissions : using rwx, u, g, o or using digital numers
### ==> remove permission
chmod u-x file2
chmod g-w file2
chmod o-wx file2
ll

### ==> adding permission
chmod u+x file2
chmod g+w file2
chmod o+wrx file2

chmod 755 file2
chmod 754 file2 # remove the execute (x=1) permission to other
chmod 354 file2 # remove read (r=4) permission to owner 

### Change the group owner on the file
groupadd utrainsGp # creating the now gp
ll
chgrp utrainsGp class
ll # class folder are changing the grp form root to utrainsGp
chmod g+w class # adding the Wite (w) permissio to our now Gp 
chmod 774 class


## Change owner of a file
chown student class
ll 

## Example : switch to a student user, and create an another file
su student
password: "school1"
touch learning
ll 

## change Owner and Group with the same command
sudo su
chown student:utrainsGp learning

### Special permission : when we'll set this, a S replace x on owner permission
#adding SUID
chmod u+s file2 #or
chmod 4664 file2
#moving SUID
chmod u-s file2 # or
chmod 0664 file2
#Sticky bit
chmod o+t file2
ll 

