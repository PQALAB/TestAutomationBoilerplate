from SeleniumLibrary.base import keyword
from SeleniumLibrary import SeleniumLibrary

from selenium.common.exceptions import WebDriverException, NoSuchElementException
from selenium.webdriver.remote.webdriver import WebDriver

from robot.libraries.BuiltIn import BuiltIn
from robot.api import logger

@keyword(name='Python Keyword Demo')
def python_keyword_demo():
    logger.info('python keyword executing', also_console=True)
    sl = BuiltIn().get_library_instance('SeleniumLibrary')

    assert isinstance(sl, SeleniumLibrary)
    logger.info(sl.get_keyword_names(), also_console=True)
    sl.keywords['log_location']()
    driver = sl.driver()

    # works for all types of drivers 
    assert isinstance(driver, WebDriver)
    try:
        driver.find_element_by_xpath('//button[text()="Nick"]')
    except NoSuchElementException as e:
        logger.info('could not find Nick button {}'.format(e))
