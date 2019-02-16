
from selenium import webdriver
import time
driver = webdriver.Chrome()
try:
    driver.get("https://www.microsoft.com/pl-pl/")
    driver.maximize_window()
    driver.find_element_by_id("l1_support").click()
    
    driver.find_element_by_xpath("//a[@id='i-need-help-with-Office']").click()
    driver.get_screenshot_as_file("microsoft.jpg")
finally:
    driver.quit()