@java-unit
Feature: Unit Test Feature

  Scenario: Use of Java type in-built
    * def date = Java.type('java.util.Date')
    * def currentDate = new date();
    * print currentDate

  Scenario: Use of static method from another java class
    * def javaCommonMethods = Java.type('helper.JavaCommon')
    * def user = javaCommonMethods.getSystemUser();
    * print user

  Scenario: Use of non-static method from another java class
    * def javaCommonMethods = Java.type('helper.JavaCommon')
    * def newJavaMethods = new javaCommonMethods();
    * def osName = newJavaMethods.getOSName();
    * print osName
