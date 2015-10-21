//
//  RadicalConvention.h
//  Pods
//
//  Created by Ferdly Sethio on 9/9/15.
//
//

#ifndef Pods_RadicalConvention_h
#define Pods_RadicalConvention_h

#ifdef DEBUG
#define FSLog(...) NSLog(@"%s(%p) %@", __PRETTY_FUNCTION__, self, [NSString stringWithFormat:__VA_ARGS__])
#else
#define FSLog(...) ((void)0)
#endif

#import "FSAppDelegate.h"
#import "FSManager.h"
#import "FSAccountManager.h"
#import "FSRequestManager.h"
#import "FSJSONParserManager.h"
#import "FSResponderManager.h"
#import "FSKeychainManager.h"
#import "FSSegmentedControl.h"
#import "UIViewController+FS.h"
#import "UIView+FS.h"
#import "UIAlertController+FS.h"
#import "FSPageController.h"

#endif