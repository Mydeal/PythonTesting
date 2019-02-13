from selenium import webdriver

driver = webdriver.Chrome()
driver.get('https://news.google.com')

driver.maximize_windows()

open = driver.find_element_by_xpath("//span[@class='ICsaqd']")
open.click()

driver.get_screenshot_as_file('test.png')
driver.quit()