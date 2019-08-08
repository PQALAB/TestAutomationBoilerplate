from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
import logging

logger = logging.getLogger(name='test-logger')

def create_webdriver(browser='Chrome', **kwargs):
    """
    Starts a webdriver with the given desired caps

    browser : the browser to use for the webdriver 
    kwargs : dictionary of desired capabilities

    returns : webdriver
    """
    if browser == 'Chrome':
        return webdriver.Chrome(desired_capabilities=kwargs)
    else:
        raise NotImplementedError('have not added support for other browsers yet')

def open_test_page(driver, page_url):
    """
    Opens a test page and logs the current location if the driver was redirected

    driver : webdriver
    page_url : url as a string 

    returns: None
    """
    driver.get(page_url)
    if driver.current_url != page_url:
        logger.info('loaded {}. Was redirected to {}'.format(page_url, driver.current_url))


def does_element_exist(driver, locator):
    """
    Safe way to determine if an element exists. Returns True if it exists, false if not

    driver : webdriver
    locator : xpath as a string to locate an element 
    """
    assert isinstance(driver, webdriver.remote.webdriver.WebDriver)
    try:
        driver.find_element_by_xpath(locator)
        return True
    except NoSuchElementException as e:
        logger.info('could not find element {}: {}'.format(locator, e))
    return False

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    driver = create_webdriver()
    open_test_page(driver, 'https://brew.sh/')
    # find value props
    if does_element_exist(driver, "//*[@id='question']"):
        logger.info('page contains value props section')
    driver.quit()
