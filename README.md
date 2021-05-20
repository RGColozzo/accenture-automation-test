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
#!/bin/bash

VALUE_MAKE=BMW
TXT_ENGINE_PERFORMANCE=120
TXT_DATE_MANUFACTURE=12/01/2020
VALUE_NUMBER_SEATS='2'
VALUE_FUEL_TYPE=Diesel
TXT_PAYLOAD=120
TXT_TOTAL_WEIGHT=120
TXT_LIST_PRICE=500
TXT_ANNUAL_MILEAGE=120

TXT_FIRST_NAME=Rennan
TXT_LAST_NAME=Gimenez
TXT_BIRTH_DATE=07/29/1999
VALUE_COUNTRY=Brazil
TXT_ZIP_CODE=13187149
VALUE_OCCUPATION=Employee

TXT_START_DATE=12/01/2021
VALUE_INSURANCE_SUM=3000000
VALUE_MERIT_RATING='Super Bonus'
VALUE_DAMAGE_INSURANCE='Full Coverage'
VALUE_COURTESY_CAR=Yes

TXT_EMAIL=contato.rennang@gmail.com
TXT_USERNAME=rennanG
TXT_PASSWORD=Inicial@2021

robot -d '..\results\' -t 'Case 1: Fill forms and send quote' -v VALUE_MAKE:$VALUE_MAKE -v VALUE_MODEL:$VALUE_MODEL -v TXT_CYLINDER_CAPACITY:$TXT_CYLINDER_CAPACITY -v TXT_ENGINE_PERFORMANCE:$TXT_ENGINE_PERFORMANCE -v TXT_DATE_MANUFACTURE:$TXT_DATE_MANUFACTURE -v VALUE_NUMBER_SEATS:"$VALUE_NUMBER_SEATS" -v VALUE_FUEL_TYPE:$VALUE_FUEL_TYPE -v TXT_PAYLOAD:$TXT_PAYLOAD -v TXT_TOTAL_WEIGHT:$TXT_TOTAL_WEIGHT -v TXT_LIST_PRICE:$TXT_LIST_PRICE -v TXT_ANNUAL_MILEAGE:$TXT_ANNUAL_MILEAGE -v TXT_FIRST_NAME:$TXT_FIRST_NAME -v TXT_LAST_NAME:$TXT_LAST_NAME -v TXT_BIRTH_DATE:$TXT_BIRTH_DATE -v VALUE_COUNTRY:$VALUE_COUNTRY -v TXT_ZIP_CODE:$TXT_ZIP_CODE -v VALUE_OCCUPATION:$VALUE_OCCUPATION -v TXT_START_DATE:$TXT_START_DATE -v VALUE_INSURANCE_SUM:$VALUE_INSURANCE_SUM -v VALUE_MERIT_RATING:"$VALUE_MERIT_RATING" -v VALUE_DAMAGE_INSURANCE:"$VALUE_DAMAGE_INSURANCE" -v VALUE_COURTESY_CAR:$VALUE_COURTESY_CAR -v TXT_EMAIL:$TXT_EMAIL -v TXT_USERNAME:$TXT_USERNAME -v TXT_PASSWORD:$TXT_PASSWORD '..\tests\tests.robot'
```

To execute it, you just have to double click in the file **start.sh**!

### Author
---

Made by [Rennan Gimenez](https://www.instagram.com/rennangimenez/)!

[![Linkedin Badge](https://img.shields.io/badge/-Rennan-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rennan-gimenez/)](https://www.linkedin.com/in/rennan-gimenez/)