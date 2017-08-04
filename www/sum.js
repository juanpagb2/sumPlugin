/*global cordova, module*/

module.exports = {
    sum: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Test", "sum", [num, num1]);
    }
};
