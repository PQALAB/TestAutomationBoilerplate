# TestAutomationBoilerplate

## Resources

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
