from selenium import webdriver

a = webdriver.Chrome()
a.get("https://news.google.com")
button = a.find_element_by_xpath("//span[@class='ICsaqd']")
button.click()
a.get_screenshot_as_file("photo.png")

a.quit()