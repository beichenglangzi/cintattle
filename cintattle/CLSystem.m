//
//  CLSystem.m
//  cintattle
//
//  Created by cl on 16/5/30.
//  Copyright © 2016年 cl. All rights reserved.
//

#import "CLSystem.h"

@implementation CLSystem
+(void)registerForRemoteNotification{
    if ([[UIDevice currentDevice].systemVersion floatValue] < 8.0) {
        UIRemoteNotificationType types = UIRemoteNotificationTypeBadge |
        UIRemoteNotificationTypeAlert |
        UIRemoteNotificationTypeSound;
       
        [ [UIApplication sharedApplication] registerForRemoteNotificationTypes:types];
        
    } else {
        UIUserNotificationType types = UIUserNotificationTypeAlert |
        UIUserNotificationTypeBadge |
        UIUserNotificationTypeSound;
        
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:types categories:nil];
        [ [UIApplication sharedApplication] registerUserNotificationSettings:settings];
        [ [UIApplication sharedApplication] registerForRemoteNotifications];
    }
}
+(void)handleRemoteNotificationsWithDeviceToken:(NSData*)deviceToken
{
    //把deviceToken保存在服务器
    
    
}

@end
