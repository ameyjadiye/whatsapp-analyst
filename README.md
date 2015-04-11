# whatsapp-analyst

## What is it?
WhatsApp Analyst is for understanding many things with statistical way, it need your whatsapp exported group conversation file as input in returns it gives you the crazy analytics.


## Installation
you are going to need python and R installed on your machine.

```
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install python2.7
sudo apt-get install littler python-rpy
sudo apt-get install r-base
```

## Running the code

+ Go to Whatsapp group >> click on setting's (top right cornor) >> click on more >> click on email conversation >> mail conversation.
+ Download file from mail and move to directory where code is present.
+ Rename file to *input_data.txt*.
+ Fire the below commands.

```
#First refine data with python.
amey@XPS ~/work/repo_bank/whatsapp-analyst $ ./data_curator.py

#Then generate analytics.
amey@XPS ~/work/repo_bank/whatsapp-analyst $ ./generate_member_wise.R
```

## Contributions 
Click on Star, Make pull requests, suggest improvement and bugs.
