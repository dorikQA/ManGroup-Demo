Feature: Account
#1
  Scenario: Rset profile settings
    Then Open the Jump page and select the Man Group
    Then Login with valid credentials
    Then Click "Profile" icon
    Then Tap "Reset" button
# CREATE NEW SPACE FUCTIONALITY
#3
  Scenario: Creating the Work Space - Open Create new Space dialog - Close dialog
    #Then Open the Jump page and select the Man Group
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Verify "Create a New Space" overlay opens
    Then Tap button "close"
    Then Verify that "Create a New Space" overlay was closed

#4
  Scenario: Creating the Work Space - Create Space WITHOUT the name check the name
   # Then Login with valid credentials
    Then Tap on "+" button
    Then Tap button "Create Space"
    Then Verify that "Name your space" exists
    Then Verify that "Name your space" is active
#5
  Scenario: Creating the Work Space - Create Space WITH the name check the name
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Enter "Test Automation" workspace name
    Then Tap button "Create Space"
    Then Verify that "Test Automation" exists
    Then Verify that "Test Automation" is active

#6
  Scenario: Checking the Work Space - Duplicate  functionality
    #Then Login with valid credentials
    Then Move mouse to "Test Automation" ws and tap "Duplicate"
    Then Verify that "copy of Test Automation" exists

# WORK SPACE DUPLICATE-REMOVE-RENAME FUNCTIONS
#7
  Scenario: Checking the Work Space - Rename functionality
  # Then Login with valid credentials
    Then Move mouse to "copy of Test Automation" ws and tap "Rename"
    Then Enter new name "Renamed WS" of workspace and press enter button
    Then Verify that "Renamed WS" exists

#13
  Scenario: Checking the Work Space - Rename functionality
    #Then Open the Jump page and select the Man Group
    #Then Login with valid credentials
    Then Move mouse to "Renamed WS" ws and tap "Remove"
    Then Verify "Renamed WS" doesn't exist
  Scenario: My Profile- Checking that user can open and close My Profile overlay
    #Then Open the Jump page and select the Man Group
   # Then Login with valid credentials
    Then Click "Profile" icon
    Then Verify "My Profile" overlay opens
    Then Tap "close"
    Then Verify that "My Profile" overlay was closed
Scenario:

#2
  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
    #Then Open the Jump page and select the Man Group
    #Then Login with valid credentials
    Then Click "Profile" icon
    Then Verify "My Profile" overlay contains subsections:

      |subsections|
      |Contact Information |
      |Change Password     |
      |Language Selector   |
      |Preferences        |

     Then Click "Profile" icon
     Then Verify subsections in Contact Information:

      |subsections|
      |Name       |
      |Email      |
      |Company   |
    Then Verify Change Password contains links:

      |links|
      |Click here to reset your password|
      |Click here to reset your pin     |
    Then Verify Language Selector contains languages:

      |languages|
      |English|
    Then Verify Preferences contains Theme Styles:

      |themes|
      |Day|
      |Night|
    Then Tap "close"
    Then Verify that "My Profile" overlay was closed



# "CREATE NEW SPACE" OVERLAY
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

    Then Tap "close"

# CREATE NEW SPACE OVERLAY-VERIFYING MODULES
#15
#
  Scenario: Create New Space overlay - General contains required submodules
    #Then Open the Jump page and select the Man Group
    #Then Login with valid credentials
    Then Tap on "+" button
   # Then Click "General"
    Then Verify overlay "Create a New Space" module "General" contains:

      |submodule          |
      |Documents          |
      |Fund Summary       |
      |Fund Ratings       |
      |Commentary         |
# CREATE NEW SPACE OVERLAY-VERIFYING SUBMODULES-USER PREFERENCES
 #16
  Scenario: Create New Space overlay - Risk contains required submodules
    #Then Open the Jump page and select the Man Group
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Verify overlay "Create a New Space" module "Risk" contains:

      |submodule          |
      |Risk Snapshot      |
      |VaR                |
      |Stress & Scenario  |
      |Sensitivity        |
      |VaR Return Envelope|
    # |Exposure           |

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
      #|Benchmark Up/Down             |
  #18
  Scenario: Create New Space overlay - Admin contains required submodules
    #Then Login with valid credentials
    Then Tap on "+" button
    Then Click "Admin"
    Then Verify overlay "Create a New Space" module "Admin" contains:

      |submodule          |
      |Data Monitor     |

#19
#Scenario: Reset User Preference
#  Then Login with valid credentials
#  #Then Tap "Reset" button
#  Then Click "Profile" icon
#  Then Tap "Reset" button
 #  Scenario: Checking the Work Space - Functionality  are available (Duplicate, Remove, Rename)
#    Then Login with valid credentials
#    Then Move mouse to Ws
#    Then Verify that Duplicate, Remove, Rename are available
#Scenario: Checking the availability and functionality (open /close)  items on the Index page (Profile, Alerts, Add Module, Download PDF
#  Scenario: My Profile - Verify  that My Profile overlay contains Contact information, Change Password, Language selector, Preference
#20
  Scenario: Verify that user can add preferences to Work Space
  #Then Open the Jump page and select the Man Group
  #  Then Login with valid credentials
  Then Tap on "+" button
  #Then Enter "Test2" workspace name
  Then Add 1 random preference from each module
  #Then Tap button "Create Space"