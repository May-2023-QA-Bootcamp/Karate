function fn() {   
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    baseUrl: 'https://reqres.in/api'
  };
  if (env == 'stage') {
    // over-ride only those that need to be
    config.baseUrl = 'https://stg-reqres.in/api';
  } else if (env == 'qa') {
    config.baseUrl = 'https://qa-reqres.in/api';
  }
  
  config.reqresConstant = karate.callSingle('classpath:helper/constant.js');
  
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}