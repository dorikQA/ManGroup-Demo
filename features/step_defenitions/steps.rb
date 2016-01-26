Then /^Open the Jump page and select the Man Group$/ do
  $driver.get "https://clarus-man-a2.wsodqa.com/Login"
end

Then /^Input the incorrect or incomplete email address$/ do
  email = $driver.find_element(:xpath, "//input[@name = 'user_id']")
  email.send_keys "tatsiana"

end

Then /^Click "([^"]*)" button$/ do |button|
  $driver.find_element(:xpath, "//button[contains(@class,'ui-button') and text() = '#{button}']").click
end

Then /^Click "Send" password  button$/ do
    $driver.find_element(:xpath, "//div[@class ='forgot-password']//*[@value = 'Send']").click
end
Then /^Click "Send" pin button$/ do
  $driver.find_element(:xpath, "//div[@class ='forgot-pin']//*[@value = 'Send']").click
end
Then /^Verify warning message "([^"]*)"$/ do |message|
  sleep 3
  warningMessage = $driver.find_elements(:xpath, "//*[contains(text(),'#{message}')]")
  if warningMessage.count >0
    puts "TC.Passed.Message '#{message}' was occurred. "
  else
    puts "BUG!'#{message}' message was not accured"
  end

end

Then /^Input the correct email address$/ do

  email = $driver.find_element(:xpath, "//input[@name = 'user_id']")
  email.send_keys "Testing112123123@gmail.com"
end

Then /^Input the correct email and correct password$/ do
  email = $driver.find_element(:xpath, "//input[@name = 'user_id']")
  email.send_keys "Testing112123123@gmail.com"
  password =  $driver.find_element(:xpath, "//input[@id = 'user_password']")
  password.send_keys "0ChangeMe0!"
end

Then /^Input the correct email and correct password but Incorrect Pin$/ do
  email = $driver.find_element(:xpath, "//input[@name = 'user_id']")
  email.send_keys "Testing112123123@gmail.com"
  sleep 1
  password = $driver.find_element(:xpath, "//input[@id = 'user_password']")
  password.send_keys "0ChangeMe0!"
  sleep 1
  pin = $driver.find_element(:xpath, "//input[@id = 'txtUserPin']")
  pin.send_keys "9999"
end

Then /^Input the correct credentials$/ do
  email = $driver.find_element(:xpath, "//input[@name = 'user_id']")
  email.send_keys "Testing112123123@gmail.com"
  sleep 1
  password = $driver.find_element(:xpath, "//input[@id = 'user_password']")
  password.send_keys "0ChangeMe0!"
  sleep 1
  pin = $driver.find_element(:xpath, "//input[@id = 'txtUserPin']")
  pin.send_keys "9876"

end
# Then /^Click Login button after correct credentials$/ do
#   $driver.find_element(:xpath, "//button[@class = 'ui-button login-button']").click
#   sleep 8
#
# end
Then /^Verify that user  is successfully login$/ do
  sleep 30
  $driver.find_element(:xpath, "//span[@id = 'UserProfileButton']")
  $driver.find_element(:xpath, "//ul[@id = 'WorkspaceTabNavigation']")
  $driver.find_element(:xpath, "//button[@id = 'AddModuleButton']")
  $driver.find_element(:xpath, "//button[@id = 'DownloadPDFButton']")
  puts "TC-Passed. User  is successfully login and on Portfolio page"

end
Then /^Clear email field$/ do
  email = $driver.find_element(:xpath, "//input[@name = 'user_id']").clear
end
Then /Clear Pin field$/ do
  pin = $driver.find_element(:xpath, "//input[@id = 'txtUserPin']").clear
end
Then /^Clear Password field$/ do
  password =  $driver.find_element(:xpath, "//input[@id = 'user_password']").clear
end
Then /^Enter correct Password$/ do
  password =  $driver.find_element(:xpath, "//input[@id = 'user_password']")
  password.send_keys "0ChangeMe0!"
end
Then /^Enter incorrect pin$/ do
  pin = $driver.find_element(:xpath, "//input[@id = 'txtUserPin']")
  pin.send_keys "9999"

end
Then /^Input the correct pin$/ do
  pin = $driver.find_element(:xpath, "//input[@id = 'txtUserPin']")
  pin.send_keys "9876"
end
Then /^Input the incorrect pin$/ do
  pin = $driver.find_element(:xpath, "//input[@id = 'txtUserPin']")
  pin.send_keys "9999"
end

Then /^Click on "([^"]*)" link$/ do |forgotlink|
  $driver.find_element(:xpath, "//div[@class = 'forgot-pass']//*[contains(text(),'#{forgotlink}')]").click
end

Then /^Close warning message "Invalid Email Address"$/ do
  $driver.find_element(:xpath, "//div[@id = 'ErrorIcon']").click
end
Then /^Verify the message "([^"]*)" will be closed$/ do |message|
  warningMessage = $driver.find_elements(:xpath, "//*[contains(text(),'#{message}')]")
  if warningMessage.count > 0
    puts "BUG!'#{message}' message was not occurred"
  else
    puts "TC Passed.Message '#{message}' closed. "
  end
 end
Then /^Verify Pop-up window "([^"]*)"."([^"]*)"$/ do |message1, message2|
  forgotpassword= $driver.find_elements(:xpath, "//*[contains(text(),'#{message1}')]")
  forgotpassword2 = $driver.find_elements(:xpath, "//*[contains(text(),  \"#{message2}\")]")
  if forgotpassword.count > 0 and forgotpassword2.count > 0
    puts "TC Passed. Window Forgot your '#{message1}'. \"#{message2}\" appears"
  else
    puts "Bug. Check error message or window  '#{message1}'. \"#{message2}\" didn't appear"
  end
  sleep 4

end
Then /^Verify success message "([^"]*)"."([^"]*)"$/ do |message1, message2|
  forgotpin = $driver.find_elements(:xpath, "//*[contains(text(),'#{message1}')]")
  forgotpin2 = $driver.find_elements(:xpath, "//*[contains(text(),\"#{message2}\")]")
  if forgotpin.count > 0 and forgotpin2.count > 0
    puts "TC Passed. Window Forgot your '#{message1}'.\"#{message2}\" appears"
  else
    puts "Bug. Check error message or window  '#{message1}'. \"#{message2}\" didn't appear"
  end
end

Then /^Close "([^"]*)" overlay$/ do |sendpasswordoverlay|
  sendpasswordoverlays = $driver.find_elements(:xpath,"//div[contains(@class, 'login-ui-icon login-icon-cross')]")
  for i in sendpasswordoverlays
    if i.displayed?
      i.click
    end
  end
  puts "TC Passed.'#{sendpasswordoverlay}' clossed"
end

Then /^Input the correct email address to create new pin$/ do
  email = $driver.find_element(:xpath, "//span/input[contains(@class, 'fpin-input')]")
  email.clear
  email.send_keys "dorik80@mail.ru"
end
Then /^Input the incorrect email address to create new pin$/ do
  email = $driver.find_element(:xpath, "//span/input[contains(@class, 'fpin-input')]")
  email.clear
  email.send_keys "dorik80"
end
Then /^Input the correct email address to create new password$/ do

  email = $driver.find_element(:xpath, "//span/input[contains(@class, 'forgot-input')]")
  email.clear
  email.send_keys "dorik80@mail.ru"
end
Then /^Login as Super Admin$/ do

  email = $driver.find_element(:xpath, "//input[@name = 'user_id']")
  email.send_keys "Testing112123123@gmail.com"
  sleep 1
  password = $driver.find_element(:xpath, "//input[@id = 'user_password']")
  password.send_keys "0ChangeMe0!"
  sleep 1
  pin = $driver.find_element(:xpath, "//input[@id = 'txtUserPin']")
  pin.send_keys "9876"
end


# Account features
Then /^Login with valid credentials$/ do
  #$driver.get "https://clarus-man-a2.wsodqa.com/Login"
  email = $driver.find_element(:xpath, "//input[@name = 'user_id']")
  email.clear
  email.send_keys "Testing112123123@gmail.com"
  password =  $driver.find_element(:xpath, "//input[@id = 'user_password']")
  password.clear
  password.send_keys "0ChangeMe0!"
  pin = $driver.find_element(:xpath, "//input[@id = 'txtUserPin']")
  pin.clear
  pin.send_keys "9876"
  $driver.find_element(:xpath, "//*[@value = 'Login']").click
  sleep 10
end
Then /^Click "Profile" icon$/ do
  $driver.find_element(:xpath, "//span[@id = 'UserProfileButton']").click
  sleep 3

end
Then /^Verify "([^"]*)" overlay opens$/ do |overlay|
  if $driver.find_element(:xpath, "//span[@class = 'ui-dialog-title' and text() = '#{overlay}']").displayed?
    sleep 2
    puts "'#{overlay}' is opened."
    # else
    #    raise "BUG! '#{overlay}' was not opened"
  end
end

#  Scenario: My Profile- Checking that user can open and close My Profile overlay
Then /^Tap "([^"]*)" button$/ do |button|

  buttons = $driver.find_elements(:xpath, "//button[@title = '#{button}']")
  for x in buttons
   if x.displayed?
       x.click
   end
   end
  #else raise "BUG! Can not find close button"
end
#  Scenario: Creating the Work Space - Open Create new Space dialog - Close dialog

Then /^Verify that "([^"]*)" overlay was closed$/ do |overlay|
  multipleoverlays = $driver.find_elements(:xpath, "//span[@class = 'ui-dialog-title' and text() = '#{overlay}']")
  sleep 5
  for i in multipleoverlays
  if i.displayed?
    raise "BUG! Probably '#{overlay}' is still displayed"
  else
    puts "TC passed. '#{overlay}' closed. "






  end
  end
  sleep 3
end
#Scenario: Creating the Work Space - Create Space with the name

Then /^Tap on "([^"]*)" button$/ do |workspace|
  sleep 3
  wsbuttons = $driver.find_elements(:xpath,"//a[@class = 'nav-tab' and text() = '#{workspace}']")
  for wsbutton in wsbuttons
    if wsbutton.displayed?
      wsbutton.click
    end
  end
end

#Scenario: Creating the Work Space - Create Space with the name
Then /^Tap button "([^"]*)"$/ do |button|
  $driver.find_element(:xpath,"//span[@class = 'ui-button-text' and text() = '#{button}']").click
end
Then /^Verify that "([^"]*)" was created and it's active$/ do |wsname|
  wsnew = $driver.find_elements(:xpath, "//li[@class = 'active']/a[contains(@title,'#{wsname}')]")
  if wsnew.count > 0
    puts "TC passed. '#{wsname}' was created and it's active"

  else raise "TC Failed. WS was not created or it's not active"
  end
end

#    Scenario: Creating the Work Space - Create Space WITH the name – check the name
Then /^Enter WS name$/ do
  wsname = $driver.find_element(:xpath, "//input[@class = 'workspace-name']")
  wsname.send_keys "Test Automation WS"
end

#Scenario: Checking the Work Space - Duplicate  functionality
Then /^Move mouse to "([^"]*)" ws and tap "([^"]*)"$/ do |ws, action|
  workspace = $driver.find_element(:xpath, "//a[@class = 'nav-tab' and text() = '#{ws}']")
  $driver.mouse.move_to workspace
  sleep 5
  actions = $driver.find_elements(:xpath, "//span[contains(text(), '#{action}')]")
  for i in actions
    if i.displayed?
      i.click
    end
  end
end
Then /^Verify that 'copy of ([^"]*)' was created and displayed last in list$/ do |ws|

duplicate = $driver.find_elements(:xpath, "//li[@class = 'active']/a[contains(@title, 'copy of #{ws}')]")
  if duplicate.count > 0
    puts "TC passed"
  else raise 'Bug'
  end
end

Then /^Enter new name "([^"]*)" of workspace and press enter button$/ do |rename|
  sleep 5
  renamefield = $driver.find_element(:xpath, "//input[@class = 'rename-input']")
  renamefield.send_keys "#{rename}"
  renamefield.send_keys :enter
end
#2  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
Then /^Verify "([^"]*)" overlay contains subsections:$/ do |overlay, subsection|
  puts overlay
  puts subsection
  for row in subsection.hashes() do
    element = $driver.find_elements(:xpath, "//h3[text() = '#{row['subsections']}']")
    if element.count == 0
      raise  "Couldn't find subsection  #{row}"
    end
  end
end


#   Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
Then /^Verify subsections in ([^"]*):$/ do |subsection, name|
puts subsection
puts name
$driver.find_element(:xpath, "//h3[text() = '#{subsection}']").click
for row in name.hashes() do
  element = $driver.find_elements(:xpath,"//td[text() = '#{row['subsections']}']")
  if element.count == 0
    raise  "Couldn't find subsection  #{row}"
  end
 end
end
# Then /^Verify "Create a New Space" overlay "([^"]*)" column contains:$/ do |modules, submodules|
#   puts modules
#   puts submodules
#   element1 = $driver.find_element(:xpath, "//div[@class = 'newSpaceStepTwo']//h5[contains(.,'#{modules}')]")
#   $driver.mouse.move_to element1
#   for row in submodules.hashes()
#     element2 = $driver.find_elements(:xpath,"//div[@class = 'newSpaceStepTwo']//a[contains(.,'#{row['submodule']}')]")
#     if element2.count == 0
#       raise  "Couldn't find module #{row}"
#     end
#   end
# end

Then /^Verify ([^"]*) contains links:$/ do |subsection, linkname|
  puts subsection
  puts linkname
  $driver.find_element(:xpath, "//h3[text() = '#{subsection}']").click
  for row in linkname.hashes() do
    element = $driver.find_elements(:xpath,"//span[text() = '#{row['links']}']")
    if element.count == 0
      raise  "Couldn't find link name #{row}"
    end
  end
end
Then /^Verify ([^"]*) contains languages:$/ do|subsection, language|
  puts subsection
  puts language
  $driver.find_element(:xpath, "//h3[contains(.,'#{subsection}')]").click
  for row in language.hashes() do
    element = $driver.find_elements(:xpath,"//tr[contains(.,'Language')]//span[contains(.,'#{row['languages']}')]")
    if element.count == 0
      raise  "Couldn't find language #{row}"
    end
  end
end
Then /^Verify ([^"]*) contains Theme Styles:$/ do |subsection, theme|

  puts subsection
  puts theme
  $driver.find_element(:xpath, "//h3[text() = '#{subsection}']").click
  for row in theme.hashes() do
    element = $driver.find_elements(:xpath,"//div[contains(@class,'content clearfix')][./p[contains(.,'Choose a theme style')]]//label[text() = '#{row['themes']}']")
    if element.count == 0
      raise  "Couldn't find Theme #{row}"
    end
  end
end
#Scenario: Create New Space overlay - Verifying that General, Performance, Risk, Admin exist
 Then /^Verify "Create a New Space" overlay "([^"]*)" column contains:$/ do |modules, submodules|
   puts modules
   puts submodules
           #element1 = $driver.find_element(:xpath, "//div[@class = 'newSpaceStepTwo']//h5[contains(.,'#{modules}')]")
           for row in submodules.hashes()
            element2 = $driver.find_elements(:xpath,"//div[@class = 'newSpaceStepTwo']//a[text() = '#{row['submodule']}']")
            if element2.count == 0
             raise  "Couldn't find module #{row}"
            end
            for i in element2
               i.click
               sleep 2
            end
          end
 end

Then /^Click "([^"]*)"$/ do |modules|
  $driver.find_element(:xpath,"//div[@class = 'newSpaceStepTwo']//a[text() = '#{modules}']").click

end

Then /^Verify overlay "Create a New Space" module "([^"]*)" contains:$/ do |modules, submodules|
  puts modules
  puts submodules
   for row in submodules.hashes()
    element2 = $driver.find_elements(:xpath,"//div[@class = 'newSpaceStepTwo']//a[text() = '#{row['submodule']}']")
     if element2.count == 0
      raise  "Couldn't find module #{row['submodule']}"
     end
      for i in element2
        if i.displayed?
        puts "#{row['submodule']} Found and displayed"
        else raise  "Submodule #{row['submodule']} is not displayed"
        end
      end
   end
end
Then /^Tap "Reset" button$/ do
  reset = $driver.find_element(:id, "ResetUserPreferencesButton").click
end
Then /^Add 1 random preference from each module$/ do
  elements = $driver.find_elements(:xpath,"//div[@class = 'newSpaceStepTwo']//ul[@class = 'nav-options']//a")
  for i in elements
    i.click
    sleep 5
    preferences = $driver.find_elements(:xpath,"//div[@class = 'newSpaceStepTwo']//ul[@class = 'app-options appSourceList']//a")
    sleep 3
    pref = []
    for x in preferences
      if x.displayed?
        pref.push(x)
      end
    end
    pref[0].click
  end
choosentext = []
choosen =  $driver.find_elements(:xpath,"//div[@class = 'newSpaceStepTwo']//ul[@class = 'chosen-app-options chosenModules']//a")
for choose in  choosen
  choosentext.push(choose.text)
end
  wsname = $driver.find_element(:xpath, "//input[@class = 'workspace-name']")
  wsname.send_keys "Test Automation WS"
  sleep 3
  $driver.find_element(:xpath,"//span[@class = 'ui-button-text' and text() = 'Create Space']").click

  puts choosentext
  displayedchoosentext = []
  displayedchoosen =  $driver.find_elements(:xpath,"//div[@ class= 'app-header clearfix']//div[@class = 'pull-left touch-drag']")
  for choose2 in  displayedchoosen
    displayedchoosentext.push(choose2.text)
  end
  if  choosentext == displayedchoosentext
    puts 'TC passed. All good'
    else raise "Check text"
  end

end
