# TestAutomationBoilerplate

## Resources

* [RobotFramework built in documentation](http://robotframework.org/robotframework/latest/libraries/BuiltIn.html)

* [SeleniumLibrary documentation](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

* [xpath cheatsheet](https://devhints.io/xpath)

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

# Open results (stored in results)
results/log.html
```
