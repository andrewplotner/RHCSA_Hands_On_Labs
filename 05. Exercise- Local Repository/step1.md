To set up a repository we first need all the packages that go along with the repository. We could download them individually using yumdownloader, but instead we will use a redhat ISO.

First we need to install wget. This command allows us to download files with a URL. 
`yum install wget -y`{{execute}}

Second we will download the Red Hat ISO. Go get a coffee this will take a while. 
`wget https://archive.org/download/rhel-server-7.7-x86_64-dvd/rhel-server-7.7-x86_64-dvd.iso`{{execute}}


Now, you can take over.
Mount the Rhel-server-7.7-x86_64-dvd.iso to /repos/local. (be sure to create the path before mounting)




