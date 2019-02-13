from selenium import webdriver
import time





driver = webdriver.Chrome()
driver.get("https://news.google.com")
driver.maximize_window()




time.sleep(5)



NaukaiTechnika = driver.find_element_by_class_name("ICsaqd")
NaukaiTechnika.click()


.get_screenshot_as_file(zadanie1_screen)



time.sleep(3)
driver.quit()


