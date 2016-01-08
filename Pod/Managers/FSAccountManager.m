//
//  FSAccountManager.m
//  Pods
//
//  Created by Ferdly Sethio on 10/15/15.
//
//

#import "FSAccountManager.h"
#import "FSKeychainManager.h"

#define FSRequestManagerLoggedIn @"FSAccountManagerLoggedIn"

@implementation FSAccountManager

- (void)didLoad
{
    self.loggedIn = FSKeychainLoad(FSRequestManagerLoggedIn);
}

- (void)setLoggedIn:(BOOL)loggedIn
{
    [self setLoggedIn:loggedIn withUserInfo:nil];
}

- (void)setLoggedIn:(BOOL)loggedIn withUserInfo:(id)userInfo
{
    FSKeychainSave(@(loggedIn), FSRequestManagerLoggedIn);
    
    if ([self superclass] == [FSAccountManager class]) {
        [[FSAccountManager sharedManager] setLoggedIn:loggedIn withUserInfo:userInfo];
    }
    
    _loggedIn = loggedIn;
    for (id delegate in self.delegates) {
        if (loggedIn && [delegate respondsToSelector:@selector(accountManagerDidLoggedIn:)]) {
            [delegate accountManagerDidLoggedIn:userInfo];
        } else if (!loggedIn && [delegate respondsToSelector:@selector(accountManagerDidLoggedOut:)]) {
            [delegate accountManagerDidLoggedOut:userInfo];
        }
    }
}

@end
