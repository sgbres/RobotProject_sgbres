*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    This is inside Test Suite Setup
Suite Teardown    Log    This is inside Test Suite Teardown 
Test Setup    Log    This is inside Test Setup    
Test Teardown    Log    This is inside Test Teardown 
  
Default Tags    sanity     

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World... 

MySecondTest
    Log    Inside second test...
    Set Tags    regression1
    Remove Tags    regression1
    
MyThirdTest
    Log    Inside third test...    
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome 
    # Set Browser Implicit Wait    5
    # Input Text    name=q    automation step by step    clear:true
    # Press Keys    name=q    ENTER   
    # Sleep    2   
    # Close Browser 
    # Log    Test Completed    
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser      ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element     id=welcome
    # Click Element     link=Logout
    # Close Browser    
    # Log               Test Completed
    # Log               This test was executed by %{username} on %{os}
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}     Admin     admin123
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CREDENTIALS}[0]    
    Input Password    id=txtPassword    &{LOGINDATA}[password]  
    Click Button      id=btnLogin
    
