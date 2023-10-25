@ui
Feature: UI Validation

Scenario: Web App Automation
Given driver 'https://northeast.aaa.com/'
And fullscreen()
* waitFor('#zipcodeInput')
* input('#zipcodeInput','11423')
* waitFor('#zipcodeSubmit').click()
* def value = text("//div[@class='zipcodeTitle']/div[contains(@class,'b6')]")
* print value
* match value == 'Welcome to AAA Northeast'
* delay(1000)
* mouse("li.dropdown.header-dropdown:nth-of-type(2)").click()
* delay(1000)
* waitFor("li.dropdown.header-dropdown:nth-of-type(2)>ul>li:nth-of-type(2)>span")
* def benefitsText = text("li.dropdown.header-dropdown:nth-of-type(2)>ul>li:nth-of-type(2)>span")
#* click("li.dropdown.header-dropdown:nth-of-type(2)")
* print benefitsText
* assert benefitsText == 'Benefits'
* delay(2000)