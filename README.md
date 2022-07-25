# Robot Framework Test Automation Project (rftap)

## Introduction
rftap is a simple test automation project implemented with Robot Framework and aplying page object model.  
It uses SeleniumLibrary for browser automation.  
The application used as the base for the tests is Google website.  

## Requirements
The following components must be installed in your machine to run the tests:  

**Python 3**
This project was built using Python 3.10.5  
Check https://www.python.org/ to see the details based on your OS  


**Robot Framework**
Instalation using pip: ```pip install robotframework```

More details here: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installing-using-pip

This project was built using Robot Framework 5.0.1


**SeleniumLibrary**
Instalation using pip: ```pip install --upgrade robotframework-seleniumlibrary```

More details here: https://github.com/robotframework/SeleniumLibrary/

This project was built using Selenium Library 6.0.0


## Structure
rftap is distributed in 3 folders:
- _pages_: this folder contains the file *google_search_page.robot* that is the model for Google search page
- _resources_: this folder contains the file _common.robot_ that has locators used in the test and keywords used when the test execution is starting and finishing. This file was created to decrease maintenance effort, since you can change parameters, like url of the tested application, in this file and it will take effect in other files
- _tests_: this folder contains _tests.robot_ which has the tests properly saying. As Page Object Model pattern is followed, the test code is cleanner code much more easier to read. The file has 4 keywords (tests) and they are independent, so you can run only one if needed
- _results_: this folder is used to store the output files (test report and logs) generated after test execution


## Robot Framework resources used
In rftap the following resources offered by Robot Framework were used:
- Basic sections: Settings, Variables, Keyword and Test Cases
- Importing an external Library: in Settings section, you can find *Library  SeleniumLibrary*
- Importing Resource files: for example *Resource  ../resources/common.robot*
- Setup and Teardown for Test Suite in _tests.robot_ file
- Variables using pattern _${nameofvariable}_
- Keywords without and with arguments
- Documentation setting that allows you to add details about the test case
- Tags in test case to classify tests like for example by the type of test (Positive test, Negative test) or the feature
- Logging to provide additional information about test execution and allow analysis if needed 
- Behavior Drive Development (BDD) expressing the test case with **_Given_ condition _When_ action occurs _Then_ result is expeted** pattern

## Running the tests
From rftap folder: 
To run all the test suites available in tests folder and save results in results folder:
``` python -m robot -d results tests```

To run a specific test suite available in tests folder and save results in results folder:
``` python -m robot -d results "tests\Testing google search.robot" ```

Other interesting options:
- To run only the tests identified by your_tag: ``` --include your_tag or -i your_tag ``` :
- To run only a specific test case: ``` -t "Your Test Case" ``` 

## Reports
Robot Framework provides nice reports after tests are executed. Please check files in _results_ folder in this repo.

You can check a sample report here:

And a detailed log execution here:

