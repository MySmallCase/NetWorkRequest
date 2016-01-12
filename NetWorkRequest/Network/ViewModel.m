//
//  ViewModel.m
//  Network
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "ViewModel.h"
#import "API.h"
#import "Model.h"
#import <MJExtension.h>
#import "checkNetwork.h"

@implementation ViewModel

/**
 *  请求用户姓名
 */

+ (void)getUserName:(void (^)(NSString *))name failure:(void (^)(id))failure {
    API *api = [[API alloc] initWithUserID:@"C"];
    [api startWithBlockSuccess:^(API *api) {
        BaseModel *mode = [BaseModel mj_objectWithKeyValues:api.responseJSONObject];
        if ([mode.error isEqualToString:@"0"]) {
            Data *d = [Data mj_objectWithKeyValues:mode.data];
            name(d.nickname);
        }
    } failure:^(id request) {
        NETWORK_TYPE type = [checkNetwork getNetworkTypeFromStatusBar];
        if (type == NETWORK_TYPE_NONE) {
            failure(@"无网络");
        }else{
            failure(@"请求超时");
        }
    }];
}


+ (void)getUserNameWithKey:(NSString *)key name:(void (^)(NSString *))name failure:(void (^)(id))failure {
    API *api = [[API alloc] initWithUserID:key];
    [api startWithBlockSuccess:^(API *api) {
        BaseModel *mode = [BaseModel mj_objectWithKeyValues:api.responseJSONObject];
        if ([mode.error isEqualToString:@"0"]) {
            Data *d = [Data mj_objectWithKeyValues:mode.data];
            name(d.nickname);
        }else{
            failure(@"请求错误");
        }
    } failure:^(id request) {
        NETWORK_TYPE type = [checkNetwork getNetworkTypeFromStatusBar];
        if (type == NETWORK_TYPE_NONE) {
            failure(@"无网络");
        }else{
            failure(@"请求超时");
        }
    }];
}

@end
