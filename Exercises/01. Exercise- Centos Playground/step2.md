First 30 min
The following commands can be executed by clicking them
execute them in order to understand navigation through the system.

`ls`{{execute}} lists what is in your current directory

`touch testfile.txt`{{execute}} creates a blank file in your current directory

`echo hello > testfile.txt`{{execute}} places text in your testfile ( > overwrites and >> appends try it out)

`cat testfile.txt`{{execute}} prints the text in the file to the shell screen

`mkdir -p ./new/directory/paths`{{execute}} this makes a new directory path

`ls`{{execute}} lists what is in the current directory, you should be able to see testfile.txt and the newly created directory

when typing out this next command give the TAB a try in the middle of typing to watch it autocomplete

`mv testfile.txt /new/directory`{{execute}} this will move testfile.txt out of this directory into the one specified

`ls`{{execute}} this is just to confirm it

`cd /new/directory`{{execute}} now use the ls to see that the file did indeed move here


`rm testfile.txt`{{execute}} this will delete the file

`rmdir paths`{{execute}} This will delete an empty directory

`cd ~`{{execute}} this takes you back to your home directory

`rmdir new`{{execute}} the deletion fails because it is not empty

'rm -rf new'{{execute}} this forcably deletes everything recursively.

`ls`{{execute}} to confirm


