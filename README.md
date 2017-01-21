# Whatsapp Analyst <img src="http://www.file-extensions.org/imgs/company-logo/5104/whatsapp-inc.png" height="10%" width="10%"/>

## What is it?
WhatsApp Analyst is for understanding many things with statistical way, it need your whatsapp exported group conversation file as input in returns it gives you the crazy analytics.
Ex.
<table border="0" align="center">
<tr>
<td><img src="http://codeinventory.com/images/WA1.png" height="300" width="300"/></td>
<td><img src="http://codeinventory.com/images/WA2.png" height="300" width="300"/></td>
</tr>
<tr>
<td><img src="http://codeinventory.com/images/SA1.png" height="300" width="300"/></td>
<td><img src="http://codeinventory.com/images/SA2.png" height="300" width="300"/></td>
</tr>
</table>

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

sudo R CMD INSTALL NLP_0.1-9.tar.gz
sudo R CMD INSTALL Rstem_0.4-1.tar.gz
sudo R CMD INSTALL sentiment_0.2.tar.gz
sudo R CMD INSTALL slam_0.1-40.tar.gz
sudo R CMD INSTALL tm_0.6-2.tar.gz

> install.packages("ggplot2")

```



## Running the code

+ Go to Whatsapp group >> click on setting's (top right cornor) >> click on more >> click on email conversation >> mail conversation.
+ Download file from mail and move to directory where code is present. Rename file to *input_data.txt*.
```
amey@XPS ~/work/repo_bank/whatsapp-analyst $ cp ~/Downloads/WhatsApp\ Chat\ with*.txt .
amey@XPS ~/work/repo_bank/whatsapp-analyst $ mv WhatsApp\ Chat\ with*.txt input_data.txt

amey@XPS ~/work/repo_bank/whatsapp-analyst $ ls -lh
total 2.7M
drwxr-xr-x 2 amey amey 4.0K Apr 20 22:17 bin
-rw-r--r-- 1 amey amey 631K Apr 20 22:12 __data_for_R
-rw-r----- 1 amey amey 968K Apr 12 19:35 input_data.txt
-rw-r--r-- 1 amey amey 1.1K Apr 13 13:28 LICENSE.md
drwxr-xr-x 2 amey amey 4.0K Apr 20 22:14 output
-rw-r--r-- 1 amey amey 2.5K Apr 19 01:24 README.md
drwxr-xr-x 2 amey amey 4.0K Apr 20 21:31 src

```
+ Finally fire the below commands.

```
sh ./bin/runme.sh

```

## Contributions 
Click on Star, Make pull requests, suggest improvement and bugs.
