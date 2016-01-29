@login

Feature: Login Page
# LOGIN WITH INVALID CORRECT EMAIL- PASSWORD-PIN
#1
  Scenario: Login Page -Incorrect or incomplete email address
       Then Open the Jump page and select the Man Group
       Then Input the incorrect or incomplete email address
       Then Click "Login" button
       Then Verify warning message "Invalid Email Address"
       Then Clear email field
# 2
  Scenario: Login Page -  the correct email address but keep the rest of the fields empty
    Then Open the Jump page and select the Man Group
    Then Input the correct email address
    #empty password
    Then Click "Login" button
    Then Verify warning message "Please enter a password"
    Then Clear Password field
# 3
  Scenario:  Login Page correct -Empty pin - correct email and correct password
    Then Enter correct Password
    Then Click "Login" button
    Then Verify warning message "Please enter your pin"
# 4
  Scenario: Login Page - Incorrect pin- Correct email -Correct password
    Then Enter incorrect pin
    Then Click "Login" button
    Then Verify warning message "We are unable to match the username or pin"
    Then Close "We are unable to match the username or pin" overlay

#FORGOT YOUR PASSWORD-PIN  functionality
#5
  Scenario: Login Page - Forgot password functionality - Pop-up window Forgot your password
   # Then Open the Jump page and select the Man Group
    Then Click on "Forgot your password" link
    Then Verify Pop-up window "Forgot your Password"."Don't worry, it happens. We'll send you a link to create a new password"
# 6
  Scenario: Login Page - Forgot password functionality - Empty email-Invalid email pop up closing
    #empty email
    Then Click "Send" password  button
    Then Verify warning message "Invalid Email Address"
    Then Close warning message "Invalid Email Address"
    Then Verify the message "Invalid Email Address" will be closed
# 7
 Scenario:Login Page - Forgot password functionality - Correct email
    Then Input the correct email address to create new password
    #correct email
    Then Click "Send" password  button
    Then Verify success message "Thanks!"."We have sent an email to"
    Then Close "We have sent an email to" overlay
#FORGOT YOUR PIN
# 8
  Scenario: Login Page - Forgot Pin functionality - Verifying pop-up window Forgot your pin
    Then Click on "Forgot your pin" link
    Then Verify Pop-up window "Forgot your pin?"."Don't worry, it happens. We will be calling you to create a new pin"
#9
  Scenario:Login Page - Forgot Pin functionality - Pop-up window Forgot your pin-Empty email
    #empty email
    Then Click "Send" pin button
    Then Verify warning message "Invalid Email Address"
    Then Close warning message "Invalid Email Address"
#10
  Scenario: Login Page - Forgot password functionality - Empty email-Invalid email message  closing
    #email incorrect
    Then Input the incorrect email address to create new pin
    Then Click "Send" pin button
    Then Verify warning message "Invalid Email Address"
    Then Close warning message "Invalid Email Address"
    Then Verify the message "Invalid Email Address" will be closed
#11
  Scenario: Login Page - Forgot Pin functionality - Correct email
    Then Input the correct email address to create new pin
    Then Click "Send" pin button
    Then Verify success message "Thanks!"."We will be calling you to reset your pin shortly"
    Then Close "We will be calling you to reset your pin shortly" overlay
#12
 Scenario: Login with valid credentials- Verify that user  is successfully login
    Then Login with valid credentials
    Then Verify that user  is successfully login



