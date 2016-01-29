@account
Feature: Account
#1
  @test
  Scenario: Reset profile settings
    Then Open the Jump page and select the Man Group
    Then Login with valid credentials
    Then Click "Profile" icon
    Then Tap "Reset" button
# CREATE NEW SPACE FUCTIONALITY
#2
  Scenario: Creating the Work Space - Open Create new Space dialog - Close dialog
    Then Tap on "+" button
    Then Verify "Create a New Space" overlay opens
    Then Tap button "close"
    Then Verify that "Create a New Space" overlay was closed

#3
  Scenario: Creating the Work Space - Create Space WITHOUT the name check the name
    Then Tap on "+" button
    Then Tap button "Create Space"
    Then Verify that "Name your space" exists
    Then Verify that "Name your space" is active
#4
  Scenario: Creating the Work Space - Create Space WITH the name check the name
    Then Tap on "+" button
    Then Enter "Test Automation" workspace name
    Then Tap button "Create Space"
    Then Verify that "Test Automation" exists
    Then Verify that "Test Automation" is active

#5
  Scenario: Checking the Work Space - Duplicate  functionality
    Then Move mouse to "Test Automation" ws and tap "Duplicate"
    Then Verify that "copy of Test Automation" exists

# WORK SPACE DUPLICATE-REMOVE-RENAME FUNCTIONS
#6
  Scenario: Checking the Work Space - Rename functionality
    Then Move mouse to "copy of Test Automation" ws and tap "Rename"
    Then Enter new name "Renamed WS" of workspace and press enter button
    Then Verify that "Renamed WS" exists

#7
  Scenario: Checking the Work Space - Rename functionality
    Then Move mouse to "Renamed WS" ws and tap "Remove"
    Then Verify "Renamed WS" doesn't exist
    Scenario: My Profile- Checking that user can open and close My Profile overlay
    Then Click "Profile" icon
    Then Verify "My Profile" overlay opens
    Then Tap "close"
    Then Verify that "My Profile" overlay was closed
Scenario:

#8
  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
    Then Click "Profile" icon
    Then Verify "My Profile" overlay contains subsections:
      |subsections|
      |Contact Information |
      |Change Password     |
      |Language Selector   |
      |Preferences        |
 #9
  Scenario:  My Profile - Verify  subsections in Contact Information required subsections
     Then Click "Profile" icon
     Then Verify subsections in Contact Information:
      |subsections|
      |Name       |
      |Email      |
      |Company   |
 #10
  Scenario: My Profile - Change Password contains required links
    Then Verify Change Password contains links:
      |links|
      |Click here to reset your password|
      |Click here to reset your pin     |
 #11
  Scenario: My Profile - Verify  Language Selector contains required languages
    Then Verify Language Selector contains languages:
      |languages|
      |English  |
 #12
  Scenario:My Profile - Verify  subsections in Preferences required Theme Styles
    Then Verify Preferences contains Theme Styles:
      |themes|
      |Day   |
      |Night  |
    Then Tap "close"
    Then Verify that "My Profile" overlay was closed

# "CREATE NEW SPACE" OVERLAY
#13
  Scenario: Create New Space overlay - Verifying that General, Performance, Risk, Admin exist
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Verify "Create a New Space" overlay "01. MODULE" column contains:
        |submodule  |
        |General    |
        |Performance|
        |Risk       |
        |Admin      |
    Then Tap "close"
# CREATE NEW SPACE OVERLAY-VERIFYING MODULES
#14
  Scenario: Create New Space overlay - General contains required submodules
    Then Tap on "+" button
    Then Verify overlay "Create a New Space" module "General" contains:
      |submodule          |
      |Documents          |
      |Fund Summary       |
      |Fund Ratings       |
      |Commentary         |
# CREATE NEW SPACE OVERLAY-VERIFYING SUBMODULES-USER PREFERENCES
 #15
  Scenario: Create New Space overlay - Risk contains required submodules
    Then Tap on "+" button
    Then Verify overlay "Create a New Space" module "Risk" contains:
      |submodule          |
      |Risk Snapshot      |
      |VaR                |
      |Stress & Scenario  |
      |Sensitivity        |
      |VaR Return Envelope|
      |Exposure           |
 #16
  Scenario: Create New Space overlay - Perfomance contains required submodules
    Then Tap on "+" button
    Then Click "Performance"
    Then Verify overlay "Create a New Space" module "Performance" contains:
      |submodule                     |
      |Performance Decomposition     |
      |Performance Snapshot          |
      |Statistics                    |
      |Style                         |
      |Benchmark Up/Down             |
  #17
  Scenario: Create New Space overlay - Admin contains required submodules
    Then Tap on "+" button
    Then Click "Admin"
    Then Verify overlay "Create a New Space" module "Admin" contains:
      |submodule          |
      |Data Monitor     |

