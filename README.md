# <img src="http://www.clohound.com/wp-content/uploads/2015/03/Whatsapp-logo.png" height="10%" width="10%"/> Whatsapp Analyst

## What is it?
WhatsApp Analyst is for understanding many things with statistical way, it need your whatsapp exported group conversation file as input in returns it gives you the crazy analytics.
Ex.
<table><tr><td>
<img src="http://codeinventory.com/images/WA1.png" height="300" width="300"/></td><td>
<img src="http://codeinventory.com/images/WA2.png" height="300" width="300"/></td>
</tr></table>

## Installation
you are going to need python and R installed on your machine.

```
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install python2.7
sudo apt-get install littler python-rpy
sudo apt-get install r-base
sudo apt-get install gfortran
sudo apt-get install libcurl4-gnutls-dev

# you have to download this packages from CRAN site 
sudo R CMD INSTALL sentiment_0.2.tar.gz 
sudo R CMD INSTALL Rstem_0.4-1.tar.gz

```



## Running the code

+ Go to Whatsapp group >> click on setting's (top right cornor) >> click on more >> click on email conversation >> mail conversation.
+ Download file from mail and move to directory where code is present. Rename file to *input_data.txt*.
```
amey@XPS ~/work/repo_bank/whatsapp-analyst $ cp ~/Downloads/WhatsApp\ Chat\ with*.txt .
amey@XPS ~/work/repo_bank/whatsapp-analyst $ mv WhatsApp\ Chat\ with*.txt input_data.txt

amey@XPS ~/work/repo_bank/whatsapp-analyst $ ls -lh
total 2.4M
-rwxr--r-- 1 amey amey  526 Apr 11 18:08 data_curator.py
-rw-r--r-- 1 amey amey 388K Apr 12 12:49 __data_for_R
-rwxr--r-- 1 amey amey  326 Apr 12 12:47 generate_date_wise.R
-rwxr--r-- 1 amey amey  270 Apr 12 12:47 generate_member_wise.R
-rw-r----- 1 amey amey 968K Apr 12 12:54 input_data.txt
drwxr-xr-x 2 amey amey 4.0K Apr 12 12:44 output
-rw-r--r-- 1 amey amey 1.1K Apr 12 12:51 README.md

```
+ Finally fire the below commands.

```
#First refine data with python.
amey@XPS ~/work/repo_bank/whatsapp-analyst $ ./data_curator.py > __data_for_R

#Then generate analytics.
amey@XPS ~/work/repo_bank/whatsapp-analyst $ ./generate_member_wise.R
```

## Contributions 
Click on Star, Make pull requests, suggest improvement and bugs.
