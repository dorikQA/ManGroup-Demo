require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
profile = Selenium::WebDriver::Firefox::Profile.new
#Native events.Native events are enabled by default on Windows. To turn them off:
profile.native_events = false
#SSL Certificates The Firefox driver ignores invalid SSL certificates by default. If this is not the behaviour you want, you can do:
profile.secure_ssl = true
$driver = Selenium::WebDriver.for(:firefox, :profile => profile)
#$driver = Selenium::WebDriver.for :firefox
#$driver.get $basicurl
$driver.manage.window.maximize
$dropdown = Selenium::WebDriver::Support::Select
#https://clarus-man-a2.wsodqa.com/Login


AfterStep do |scenario|
$driver.manage.timeouts.implicit_wait = 8
end
#
# After do
# $driver.close
# end
#
