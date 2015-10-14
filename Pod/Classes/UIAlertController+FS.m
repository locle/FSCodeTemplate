//
//  UIAlertController+FS.m
//  Pods
//
//  Created by Ferdly Sethio on 10/14/15.
//
//

#import "UIAlertController+FS.h"
#import "UIViewController+FS.h"

@implementation UIAlertController (FS)

+ (instancetype)showWithMessage:(NSString *)message
{
    return [self showWithTitle:nil message:message];
}

+ (instancetype)showWithTitle:(NSString *)title message:(NSString *)message
{
    return [self showAlertInViewController:[UIViewController fs_topViewController] withTitle:title message:message cancelButtonTitle:@"Dismiss" destructiveButtonTitle:nil otherButtonTitles:nil tapBlock:nil];
}

@end
