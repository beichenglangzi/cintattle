//
//  CLSystem.h
//  cintattle
//
//  Created by cl on 16/5/30.
//  Copyright © 2016年 cl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface CLSystem : NSObject
+(void)registerForRemoteNotification;
+(void)handleRemoteNotificationsWithDeviceToken:(NSData*)deviceToken;
@end
