@js-unit
Feature: Use of JS in Karate

  Scenario: in-line javascript support
    * def func =
      """
      function(){
      	print("This is a in-line js");
      }
      """
    * eval func();
    
    Scenario: param and repeate with js
    * def func =
    """
    function(i){
    	print("Printing : " + i);
    }
    """
    * eval func('Something');
    * karate.repeat(50, func);
    
