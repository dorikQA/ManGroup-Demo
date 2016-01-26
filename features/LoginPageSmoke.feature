Feature: Login Page

#1 MG00001- Landing Page - Login Page - Login -Verify warning message "Invalid Email address" will appear
  Scenario: Login Page -Incorrect or incomplete email address
    Then Open the Jump page and select the Man Group
    Then Input the incorrect or incomplete email address
    Then Click "Login" button
    Then Verify warning message "Invalid Email Address"
# 2 MG00001- Landing Page - Login Page - Login-Verify warning message "Please enter the password" will appear
  Scenario: Login Page -  the correct email address but keep the rest of the fields empty
    Then Clear email field
    Then Input the correct email address
    Then Click "Login" button
    Then Verify warning message "Please enter a password"
    Then Clear Password field

#3 MG00001- Landing Page - Login Page - Login-Verify warning message Warning message "Please enter your pin" will appear
  Scenario:  Login Page correct email and correct password but keep the PIN empty
    Then Enter correct Password
    Then Click "Login" button
    Then Verify warning message "Please enter your pin"
#4 MG00001- Landing Page - Login Page - Login -Verify warning message "Please try again.We are unable to match the username or pin. Note that multiple  attemps may lock your account.
    #Please check your entries and try again, or click the 'Forgot your pin?" will appear"
  Scenario: Login Page - the correct email and correct password but Incorrect Pin
    Then Enter incorrect pin
    Then Verify warning message "Please try again"
    Then Verify warning message "We are unable to match the username or pin"
    Then  Clear Pin field
#5 MG00001- Landing Page - Login Page - Login - Verify that user  is successfully login
  Scenario: Login page - the correct pin and click login
    Then Input the correct pin
    Then Click "Login" button
    Then Verify that user  is successfully login

  #  MG00001- Landing Page - Login Page - Login. Verify the warning messages on the  landing page if incorrect credentials have been used.
#5 MG00001- Landing Page - Login Page - Login - Verify that user  is successfully login
  Scenario: Login page - the correct credentials and click login
    Then Open the Jump page and select the Man Group
    Then Input the correct credentials
    Then Click "Login" button
    Then Verify that user  is successfully login
