module.exports = {

  enableSocialLogin: function (numberOfPrompts, successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "Popdeem", "enableSocialLogin", [numberOfPrompts]);
  },
  pushPopdeemHome: function (successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "Popdeem", "pushPopdeemHome", []);
  }

};
