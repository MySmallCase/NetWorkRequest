//
//  ViewModel.h
//  Network
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^failure)(id failure);

typedef void (^userName)(NSString *name);

@interface ViewModel : NSObject

+ (void)getUserName:(userName)name failure:(failure)failure;

@end
