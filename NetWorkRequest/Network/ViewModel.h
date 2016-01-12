//
//  ViewModel.h
//  Network
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ViewModel : NSObject

+ (void)getUserName:(void(^)(NSString *name))name failure:(void(^)(id failure))failure;

+ (void)getUserNameWithKey:(NSString *)key name:(void(^)(NSString *name))name failure:(void(^)(id failure))failure;

@end
