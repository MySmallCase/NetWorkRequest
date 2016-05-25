//
//  API.m
//  Network
//
//  Created by MyMac on 16/1/5.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "API.h"

@implementation API {
    NSString *_userID;
}



//接口地址
- (NSString *)apiMethodName{
    return @"/show/choice/banner";
}

/**
 *
 *  请求参数字典
 *
 */
- (NSMutableDictionary *)requestArgument{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    return dict;
}

/**
 *  使用的缓存方式   (默认实现的的是ClientReturnCacheDataThenLoad 有缓存就先返回缓存，同步请求数据 方式 这里可以更改缓存方式)
 */
- (ClientRequestCachePolicy)clientRequestCachePolicy {
    return ClientReloadIgnoringLocalCacheData;
}


- (NSTimeInterval)cacheAgeLimit {
    return 10.0f;
}

/**
 *  是否缓存数据  默认为YES
 */
//- (BOOL)cacheResponse{
//    return NO;
//}

/**
 *  处理返回的responseObject数据
 */
//- (id)responseProcess:(id)responseObject{
//    return responseObject[@"error"];
//}


@end
