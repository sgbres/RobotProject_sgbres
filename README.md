# rf_training

Robot Framework Test Automation Training
---
This is the Robot Framework Test Automation Training project.

Robot Framework is a generic open source
automation framework for acceptance testing, acceptance test driven
development (ATDD), and robotic process automation (RPA). It has simple plain
text syntax and it can be extended easily with libraries implemented using
Python or Java.Detailed documentation on *Robot Framework* can be found at [Robot Framework](http://robotframework.org/).

### Framework Installation:

1. Download latest version of *Python* for OS (current 3.9.0) from [Python Downloads] (http://python.org/downloads)

2. Install either VSCode or Pycharm and create a virtual environment for the project

3. Clone project repo

```
git clone https://github.com/sgbres/rf_training.git
```
---

4. Project dependencies should auto install from the requirements.txt file

5. Install webdrivers from *Browsers* section on [Selenium](https://www.selenium.dev/downloads/).  
   Add drivers to Python Scripts location e.g. 'C:\Users\<username>\AppData\Local\Programs\Python\Python39\Scripts'.

#### Terminal

> run tests from the project root dir

Run all tests:
```shell script
robot TestSuiteName
```
  
Run specific test case:
```shell script
robot -t TestName TestSuiteName
```

Run tests using tags:
```shell script
robot -i sanity TestSuiteName
```
  
Set runtime variables:
```shell script
robot -i sanity -v BROWSER:Chrome -v LOGIN_URL:https://qa.curatr3.com/ TestSuiteName
```

### Results

Reports are generated in the project root dir as 
1. output.xml
1. log.html
1. report.html
