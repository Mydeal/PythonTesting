from selenium import webdriver
import time
a = webdriver.Chrome()
a.get("https://news.google.com")
a.maximize_window() 
button = a.find_element_by_xpath("//div[@aria-label = 'Nauka i technika'] //a[@class = 'SFllF'] [@tabindex = '0']")
button.click()
time.sleep(5)
a.get_screenshot_as_file("photo.png")

a.quit()