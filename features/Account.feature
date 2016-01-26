Feature: Account
#1
  Scenario: My Profile- Checking that user can open and close My Profile overlay
    Then Open the Jump page and select the Man Group
    Then Login with valid credentials
    Then Click "Profile" icon
    Then Verify "My Profile" overlay opens
    Then Tap "Close" button
    Then Verify that "My Profile" overlay was closed


#2
  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
    #Then Login with valid credentials
    Then Click "Profile" icon
    Then Verify "My Profile" overlay contains subsections:

      |subsections|
      |Contact Information |
      |Change Password     |
      |Language Selector   |
      |Preferences        |

     Then Tap "Close" button


  Scenario: My Profile - Contact information contains all required subsections
    #Then Login with valid credentials
    Then Click "Profile" icon
    Then Verify subsections in Contact Information:

      |subsections|
      |Name       |
      |Email      |
      |Company   |
#5
  Scenario: My Profile - Contact information contains all required  links
     #Then Login with valid credentials
    #Then Click "Profile" icon
    Then Verify Change Password contains links:

      |links|
      |Click here to reset your password|
      |Click here to reset your pin     |
#6
  Scenario: My Profile - Language Selector contains all required languages
    #Then Login with valid credentials
    Then Click "Profile" icon
    Then Verify Language Selector contains languages:

      |languages|
      |English|
#7
  Scenario: My Profile - Preferences contains Theme Styles:
     #Then Login with valid credentials
    Then Verify Preferences contains Theme Styles:

      |themes|
      |Day|
      |Night|

   Then Tap "Close" button

#8
  Scenario: Creating the Work Space - Open Create new Space dialog - Close dialog
   #Then Login with valid credentials
    Then Tap on "+" button
    Then Verify "Create a New Space" overlay opens
    Then Tap "Close" button
    Then Verify that "Create a New Space" overlay was closed

#9
  Scenario: Creating the Work Space - Create Space WITHOUT the name check the name
   # Then Login with valid credentials
    Then Tap on "+" button
    Then Tap button "Create Space"
    Then Verify that "Name your space" was created and it's active
#10
  Scenario: Creating the Work Space - Create Space WITH the name check the name
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Enter WS name
    Then Tap button "Create Space"
    Then Verify that "Test Automation WS" was created and it's active

#11
  Scenario: Checking the Work Space - Duplicate  functionality
    #Then Login with valid credentials
    Then Move mouse to "Test Automation WS" ws and tap "Duplicate"
    Then Verify that 'copy of Test Automation WS' was created and displayed last in list
#12
  Scenario: Checking the Work Space - Rename functionality
  # Then Login with valid credentials
   Then Move mouse to "Test Automation WS" ws and tap "Rename"
   Then Enter new name "Renamed Test Automation WS" of workspace and press enter button
   #Then Verify that "X2" exist in list of tabs

#13
# Scenario: Checking the Work Space - Rename functionality
#    Then Login with valid credentials
#    Then Move mouse to "Renamed Test Automation WS" ws and tap "Remove"

#    Then Verify that "X" was deleted
#9
#14
  Scenario: Create New Space overlay - Verifying that General, Performance, Risk, Admin exist
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Verify "Create a New Space" overlay "01. MODULE" column contains:
        |submodule  |
        |General    |
        |Performance|
        |Risk       |
        |Admin      |

    Then Tap "Close" button
#15


  Scenario: Create New Space overlay - General contains required submodules
#    Then Login with valid credentials
    Then Tap on "+" button
    Then Click "General"
    Then Verify overlay "Create a New Space" module "General" contains:

      |submodule          |
      |Documents          |
      |Fund Summary       |
      |Fund Ratings       |
 #16
  Scenario: Create New Space overlay - Risk contains required submodules
   # Then Login with valid credentials
    Then Tap on "+" button
    Then Click "Risk"
    Then Verify overlay "Create a New Space" module "Risk" contains:

      |submodule          |
      |Risk Snapshot      |
      |VaR                |
      |Stress & Scenario  |
      |Sensitivity        |
      |VaR Return Envelope|
      |Exposure           |
 #17
  Scenario: Create New Space overlay - Perfomance contains required submodules
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Click "Performance"
    Then Verify overlay "Create a New Space" module "Performance" contains:

      |submodule                     |
      |Performance Decomposition     |
      |Performance Snapshot          |
      |Statistics                    |
      |Style                         |
      |Benchmark Up/Down             |
  Scenario: Create New Space overlay - Admin contains required submodules
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Click "Admin"
    Then Verify overlay "Create a New Space" module "Admin" contains:

      |submodule          |
      |Data Monitor     |


Scenario: Reset User Preference
  Then Login with valid credentials
  #Then Tap "Reset" button
  Then Click "Profile" icon
  Then Tap "Reset" button
 #  Scenario: Checking the Work Space - Functionality  are available (Duplicate, Remove, Rename)
#    Then Login with valid credentials
#    Then Move mouse to Ws
#    Then Verify that Duplicate, Remove, Rename are available
#Scenario: Checking the availability and functionality (open /close)  items on the Index page (Profile, Alerts, Add Module, Download PDF
#  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
#  Scenario: Scenario: My Profile - Verify  that user can Reset Profile settings
Scenario: Verify that user can add preferences to Work Space
  Then Login with valid credentials
  Then Tap on "+" button
  Then Enter WS name
  Then Add 1 random preference from each module
  #Then Tap button "Create Space"