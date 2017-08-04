//
//  Test.m
//  Hello
//
//  Created by Juan Pablo Gamboa on 8/4/17.
//
//

#import "Test.h"

@implementation Test

- (void)sum:(CDVInvokedUrlCommand *)command{
    
    NSString* number = [[command arguments] objectAtIndex:0];
    NSString* number2 = [[command arguments]objectAtIndex:1];
    
    float operationResult = [number floatValue] + [number2 floatValue];
    
    NSString* msg = [NSString stringWithFormat: @"The result of the sum is, %f", operationResult];
    
    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];
    
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end


