Turns out that someone moved this html file into the directory instead of copying it into the directory. As a result it still has its old directories SELinux label and cannot be accessed by httpd. Change the label to match its proper directory. 

run this command to confirm: `curl localhost/index.html`{{execute}}
