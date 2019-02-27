from selenium import webdriver
import time

driver = webdriver.Chrome()
driver.maximize_window()
driver.get("https://news.google.com")

time.sleep(20)

driver.find_element_by_xpath("//span[@class='ICsaqd']").click()

time.sleep(10)

driver.get_screenshot_as_file("skrinik.png")
