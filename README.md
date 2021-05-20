# ACCENTURE - AUTOMATION TEST 🤖
## Automation tests using Robot Framework, Selenium & BDD

<p align="center">
 <a href="#Prerequisite">Prerequisite</a> • 
 <a href="#Configuration">Configuration</a> • 
 <a href="#Execution">Execution</a> • 
 <a href="#Author">Author</a>
</p>

### Prerequisite
---

Before you start automating, you'll need those frameworks bellow installed on your machine:

- [x] [Python](https://www.python.org)
- [x] [VSCode](https://code.visualstudio.com/)
- [x] [Git Bash](https://git-scm.com/downloads)

First we have to configure our automation frameworks. Let's get started by cloning the repository. For that, use the command bellow in your Git Bash:

```bash
$ git clone https://github.com/RGColozzo/primecontrol-automation.git
```

Now we can start installing and configuring 🤖 Robot Framework and the Selenium library!

### Configuration
---

✅ *STEP 1* - Open Git Bash to install Robot Framework and the Selenium2Library (follow the commands bellow):

```bash
# Install Robot Framework
$ pip install robotframework

# Install Selenium2Library
$ pip install robotframework-selenium2library
```

✅ *STEP 2* - Now we have to download and save the [Chromedriver](https://chromedriver.chromium.org/downloads), because we'll use Chrome as our testing browser.
**Obs.: Remember to always verify the version of your Chrome browser and e get the compatible driver for it.**

✅ *STEP 3* - Extract the file out of the downloaded file .zip (or .rar).

✅ *STEP 4* - Go to your C: drive and create a new folder called "Automation Drivers".

✅ *STEP 5* - Put the chromedriver.exe file inside that folder.

✅ *STEP 6* - Edit your PATH environment variable and add inside of it the path to your chrome driver (C:\Automation Drivers\chromedriver.exe).

Now that you have all installed and configured, let's run the automation!

### Execution
---

You should have noticed that inside of the repository that you have cloned, exists a folder named "scripts" and inside of it we have a file named "start.sh".

This file contains the needed commands that wehave to execute to run our automation correctly. You can see it bellow:

```bash
#!/bin/sh

EMAIL_OK=rennan.colozzo18@hotmail.com
PASSWD_OK=teste123

EMAIL_NOK=teste@teste.123
PASSWD_NOK=teste

#Execução do cenário OK
robot -d '..\results\OK\' -t 'Buy a product' -v EMAIL:$EMAIL_OK -v PASSWD:$PASSWD_OK '..\tests\buy_product.robot'

#Execução do cenário não OK
robot -d '..\results\NÃO OK\' -t 'Buy a product' -v EMAIL:$EMAIL_NOK -v PASSWD:$PASSWD_NOK '..\tests\buy_product.robot'
```

To execute it, you just have to double click in the file **start.sh**!

### Author
---

Made by [Rennan Gimenez](https://www.facebook.com/RennanGimenez)!

[![Linkedin Badge](https://img.shields.io/badge/-Rennan-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rennan-gimenez/)](https://www.linkedin.com/in/rennan-gimenez/)