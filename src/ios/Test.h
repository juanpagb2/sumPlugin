//
//  Test.h
//  Hello
//
//  Created by Juan Pablo Gamboa on 8/4/17.
//
//

#import <UIKit/UIKit.h>
#import <Cordova/CDV.h>

@interface Test : CDVPlugin

- (void)sum:(CDVInvokedUrlCommand*) command;

@end
