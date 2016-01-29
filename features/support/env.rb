require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
profile = Selenium::WebDriver::Firefox::Profile.new
profile.native_events = false
profile.secure_ssl = true
$driver = Selenium::WebDriver.for(:firefox, :profile => profile)

$driver.manage.window.maximize
$dropdown = Selenium::WebDriver::Support::Select
#https://clarus-man-a2.wsodqa.com/Login


AfterStep do |scenario|
$driver.manage.timeouts.implicit_wait = 7
end
#
# After do
# $driver.close
# end
#
