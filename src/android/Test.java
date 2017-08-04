package com.example.plugin;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

public class Hello extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {

        if (action.equals("sum")) {

            float num = Float.parseFloat(data.getString(0));
            float num2 = Float.parseFloat(data.getString(1));
            
            float sumResult = num + num2;
            
            String message = "The result of the sum is: " + sumResult;
            callbackContext.success(message);

            return true;

        } else {
            
            return false;

        }
    }
}
