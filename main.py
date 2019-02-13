from selenium import webdriver
import time

driver = webdriver.Chrome()
driver.minimize_window()
driver.get("https://news.google.com")
#time.sleep(20)
driver.get_screenshot_as_file("Andrzej.png")
buisnes = driver.find_element_by_class("ICsaqd").click()
driver.quit()

