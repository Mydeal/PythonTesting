from selenium import webdriver
from selenium.webdriver.support.ui import Select
import time

driver = webdriver.Opera()
try:
    driver.get("https://www.facebook.com/?stype=lo&jlou=Afd4QGVsCZO7OOZ4nbLCosM598Rh6CoX2HYQuYYnDjAlqDrOgNyKA9hxIsD2rhcm5rU8Psm9n6SoygaDhN81ZmVvtHoiwjGVKivO4cMtSR8uyg&smuh=4747&lh=Ac-J2RwrgBZoWCNW")
    driver.maximize_window()
    driver.find_element_by_name("firstname").send_keys("Mariusz")
    driver.find_element_by_name("lastname").send_keys("Kuchalski")
    driver.find_element_by_name("reg_email__").send_keys("mariusz.kuchalski@wp.pl")
    driver.find_element_by_name("reg_email_confirmation__").send_keys("mariusz.kuchalski@wp.pl")
    driver.find_element_by_name("reg_passwd__").send_keys("123")
    select = Select(driver.find_element_by_name("birthday_day"))
    select.select_by_value("3")
    select = Select(driver.find_element_by_name("birthday_month"))
    select.select_by_value("7")
    select = Select(driver.find_element_by_name("birthdaay_year"))
    select.select_by_value("2001")
    driver.find_element_by_xpath("//input[@name='sex'][@value='2']").click()   
    
    driver.get_screenshot_as_file("facebook.png")
finally:

    driver.quit()
    