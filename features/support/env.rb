require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
$driver = Selenium::WebDriver.for :firefox
#$driver.get $basicurl
$driver.manage.window.maximize
$dropdown = Selenium::WebDriver::Support::Select
#https://clarus-man-a2.wsodqa.com/Login


AfterStep do |scenario|
$driver.manage.timeouts.implicit_wait = 3
end
#
# After do
# $driver.close
# end
#
