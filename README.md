# TestAutomationBoilerplate

## Read Me!

### Background on web automation

There are many tools for automation, and some of them are great! Traditionally web automation is usually done using a tool called selenium webdriver, or selenium library. This library is implemented in python, java, ruby, C#, C++, Go, NodeJS and some others I think.

The main thing the library actually does is keep track of browser sessions and translate your code into commands for the browser to take.

These commands are specified by the organization [W3C](https://www.w3.org/TR/webdriver1/). Without getting into too much detail I will give you an example:

Say I want to find an element, and I'm using python.

```python
element = driver.find_element_by_id("sign-in")
```

Selenium library will actually translate this into some javascript code, to be inserted into the browser. So it could look like this:

```javascript
let body = session.find.css("#sign-in")
session.execute("arguments[0].remove()", [body])
```

Then this code is sent to the webdriver at the endpoint `{webdriver url}/session/{session id}/element` where it's inserted into the browser, executed by the browser, then receives a response from the browser and returns that to the calling program (out python code).

A `webdriver` is just an executable that starts up a browser in an automation mode, and issues the commands to that browser. There can be multiple browsers open for a single webdriver.

One _key_ point to raise here is that this webdriver is remote. Even if it's on the same machine it still acts as a server, so moving the driver to your neighbors machine or across the globe should be the same as running it locally (aside from latency issues). This enables services like [Browserstack](http://browserstack.com) to offload the actual running of a browser from their users.

---

### Background on Robotframework

[RobotFramework](https://robotframework.org/) is a testing framework initially developed at [Nokia Networks](http://networks.nokia.com/), 
and has since been open sourced and maintained by the [RobotFramework foundation](http://robotframework.org/foundation).

The framework is implemented in java and python. But for most tests you won't need to touch any java or python (not to say it's not helpful though).

The framework offers a way to write tests in natural language, translate the tests into real code, run the tests, and finally accumulate results into excellent log files which can be viewed in browser.

Out of the box RF comes with no browser automation. But Robotframework is _highly extensible_ meaning [libraries](https://robotframework.org/#libraries) can added easily.

---
## Resources

* Check out the examples on the [official RobotFramework site](https://robotframework.org/)
* [RobotFramework built in documentation](http://robotframework.org/robotframework/latest/libraries/BuiltIn.html)
* [SeleniumLibrary documentation](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
* [xpath cheatsheet](https://devhints.io/xpath)
* [Git good at git](https://rogerdudler.github.io/git-guide/)
* [Python selenium documentation](https://selenium-python.readthedocs.io/)
* [What is selenium?](https://www.seleniumhq.org/docs/01_introducing_selenium.jsp)

## Setup

```bash
python3 -m pip install -r requirements.txt
```

## Running robot

```bash
# View help message
python3 -m robot --help

# Run the tests
python3 -m robot -d results tests/

# View results (stored in results)
# (Mac only)
open results/log.html
```

## Running python only example

```bash
python3 selenium_with_python.py
```
