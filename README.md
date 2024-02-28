## Important Note

For this repository, you can use to learn how to write Robot Framework syntax. But you cannot run/execute test suites inside this repository. It is because https://opensource-demo.orangehrmlive.com/ (demo website) UI totally change from previous. It means almost all element path also different from previous version (which used in this testing). I recommend users to use this repository (https://github.com/Testbits-Training/RobotFramework-CURA-demo) for learning and demonstration



# Robotframework_Project

Robot Framework is an open-source test automation framework, exclusively designed for acceptance testing and acceptance test-driven development. The environment it uses is built with a number of libraries and tools. If comparing Robot Framework with other test automation tools, then the best benefit with Robot Framework for the users is that there is no need for using any sort of programming language for implementing and running tests.

## Benefit:

- It is an open-source framework.
- It follows keyword driven, behavior driven and data driven approach for writing test script.
- Robot Framework has very easy syntax and uses human readable keywords.
- Extensive open-sourced libraries implemented in Java and Python.
- Robot framework is extensively used for RPA, Database, API automation & Web automation.
- This is the only framework which comes with all industry standard framework features with very minimal coding

## Limitation:

Robot lacks support for if-else, nested loops, which are required when the code gets complex.

## Installation:

1. Install Python 3.7.8 (follow pdf for more detail):

   `https://www.python.org/ftp/python/3.7.8/python-3.7.8-amd64.exe`
2. Install Robot Framework on command prompt:
   
   `pip install Robotframework`
3. Install Wxpython version 4.0.7 on command prompt:
   
   `pip install wxpython==4.0.7`
4. Install Robotframework IDE (RIDE) on command prompt:
   
   `pip install robotframework-ride`
5. Install Selenium Library (version 5.1.1) on command prompt:
   
   `pip install --upgrade robotframework-seleniumlibrary==5.1.1`
6. Install WebDriver:

   https://www.selenium.dev/downloads/
   After download, extract file and place it into folder python37->scripts
7. Data Driver Library:
   
   `pip install --upgrade robotframework-datadriver[XLS]`

If you don not want to use RIDE, you can use any Python IDE. For example, Pycharm:
- For the installation of PyCharm: https://www.youtube.com/watch?v=ZqqIRgNn1vM
- Writing your first test using PyCharm: https://www.youtube.com/watch?v=WsjShhwDLlo
- For data driven using excel file tutorial, can refer documentation


### Robot Framework Documentation contains:

1. Introduction
2. Features, benefits and limitation of Robot Framework
3. Installation
4. Test data syntax​
5. Keywords in Selenium Library ​
6. First testing
7. Test setup and teardown
8. Variables, keywords files, resource files
9. Behavior-driven development (BDD)
10. Data Driven

\*Documentation inside 'Robotframework Group 2.pptx'.The test scripts documentation is inside the folder 'Documentations'

## List of Features Testing for OrangeHRM :https://opensource-demo.orangehrmlive.com/

1. Candidates:
   - Adding Candidates
   - Deleting Candidates
2. Jobs Categories
   - Add job categories
   - Delete job categories
3. Licenses
   - Add Licenses
   - Delete Licenses
   - Edit Licenses
4. Nationalities
   - Add Nationalities
   - Delete Nationalities
   - Edit Nationalities


### Reference:

- https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-setup-and-teardown
- https://www.tutorialspoint.com/robot_framework/index.htm​
- https://youtu.be/ErTN5rE6t8s​
- https://youtube.com/playlist?list=PLhW3qG5bs-L9l2I8K8dEhw6HXy-Z-33w3​

### video tutorial:

1. Installation tutorial:

- https://drive.google.com/file/d/1T419njqcb95olZcSsW19c38vwjytEWwl/view?usp=drivesdk

2. First testing tutorial:

- https://drive.google.com/file/d/15Jmh_H6eVjceUPJOgx1At7xocYJwLWCS/view?usp=sharing
