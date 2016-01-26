Feature: Login Page
#  Scenario: Open Page
# LOGIN WITH INVALID CORRECT EMAIL- PASSWORD-PIN
#2 Login Page - Incorrect or incomplete email address Login -Verify warning message "Invalid Email address" will appear
  Scenario: Login Page -Incorrect or incomplete email address
       Then Open the Jump page and select the Man Group
       Then Input the incorrect or incomplete email address
       Then Click "Login" button
       Then Verify warning message "Invalid Email Address"
       Then Clear email field
# 2 Login Page - Empty Password_ Login-Verify warning message "Please enter the password" occurs
  Scenario: Login Page -  the correct email address but keep the rest of the fields empty
    #Then Open the Jump page and select the Man Group
    Then Input the correct email address
    #empty password
    Then Click "Login" button
    Then Verify warning message "Please enter a password"
    Then Clear Password field
# 3 Login Page - Correct Password-Verify warning message Warning message "Please enter your pin" occurs
  Scenario:  Login Page correct -Empty pin - correct email and correct password
    Then Enter correct Password
    Then Click "Login" button
    Then Verify warning message "Please enter your pin"
# 4 Login Page - Login - Verify warning message "Please try again.We are unable to match the username or pin" occurs
  Scenario: Login Page - Incorrect pin- Correct email -Correct password
    Then Input the incorrect pin
    Then Click "Login" button
    #Then Verify warning message "Please try again"
    Then Verify warning message "We are unable to match the username or pin"
    Then Close "We are unable to match the username or pin" overlay

#  Login Page - FORGOT YOUR PASSWORD  functionality
#6 Login Page - Forgot your password?-Pop-up window "Forgot your password" will be open

  Scenario: Login Page - Forgot password functionality - Pop-up window Forgot your password
   # Then Open the Jump page and select the Man Group
    Then Click on "Forgot your password" link
    Then Verify Pop-up window "Forgot your Password"."Don't worry, it happens. We'll send you a link to create a new password"
   # Then Close Pop-up

# 7 Login Page - Forgot your password?-Empty email address
  Scenario: Login Page - Forgot password functionality - Empty email-Invalid email pop up closing
    #empty email
    Then Click "Send" password  button
    Then Verify warning message "Invalid Email Address"
    Then Close warning message "Invalid Email Address"
    Then Verify the message "Invalid Email Address" will be closed

# 8 Login Page - Forgot password functionality - Correct email

 Scenario:Login Page - Forgot password functionality - Correct email
    Then Input the correct email address to create new password
    #correct email
    Then Click "Send" password  button
    Then Verify success message "Thanks!"."We have sent an email to"
    Then Close "We have sent an email to" overlay

#  Login Page - FORGOT YOUR PIN  functionality

# 9  Login Page - Forgot your pin?-Pop-up window "Forgot your pin" will be open
  Scenario: Login Page - Forgot Pin functionality - Verifying pop-up window Forgot your pin
    #Then Open the Jump page and select the Man Group
    Then Click on "Forgot your pin" link
    Then Verify Pop-up window "Forgot your pin?"."Don't worry, it happens. We will be calling you to create a new pin"

#10 Forgot your pin? - Empty email -  Warning message "Invalid Email address" will appear.

  Scenario:Login Page - Forgot Pin functionality - Pop-up window Forgot your pin-Empty email
    #empty email
    Then Click "Send" pin button
    Then Verify warning message "Invalid Email Address"
    Then Close warning message "Invalid Email Address"


#11 Login Page - Forgot your pin? - Incorrect email -  Warning message "Invalid Email address" will appear.
  Scenario: Login Page - Forgot password functionality - Empty email-Invalid email message  closing
    #email incorrect
    Then Input the incorrect email address to create new pin
    Then Click "Send" pin button
    Then Verify warning message "Invalid Email Address"
    Then Close warning message "Invalid Email Address"
    Then Verify the message "Invalid Email Address" will be closed

#12 Login Page - Forgot your pin? - Correct email - "Thanks. We will be calling you to reset your pin shortly"

  Scenario: Login Page - Forgot Pin functionality - Correct email
    Then Input the correct email address to create new pin
    Then Click "Send" pin button
    Then Verify success message "Thanks!"."We will be calling you to reset your pin shortly"
    Then Close "We will be calling you to reset your pin shortly" overlay

Scenario: Login with valid credentials- Verify that user  is successfully login
    Then Login with valid credentials
    Then Verify that user  is successfully login


#BUG!!! Reported already
#8 MG00002- Landing Page - Login Page - Forgot your password?-  Input the email which never been register with Man Group
#  Scenario: Login Page - Forgot password functionality - Input the email which never been register with Man Group
#    Then Open the Jump page and select the Man Group
#    Then Click on "Forgot your password?" link
#    Then Input the email which never been register with Man Group
#    Then Then Click "Send" button
#    Then Verify warning message "Bla bla bla"
