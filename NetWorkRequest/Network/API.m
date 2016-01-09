//
//  API.m
//  Network
//
//  Created by MyMac on 16/1/5.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "API.h"

@implementation API

//接口地址
- (NSString *)apiMethodName{
    return @"/index.aspx";
}

/**
 *
 *  请求参数字典
 *
 */
- (NSMutableDictionary *)requestArgument{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"key"] = @"C";
    return dict;
}

/**
 *  使用的缓存方式   (默认实现的的是ClientReturnCacheDataThenLoad 有缓存就先返回缓存，同步请求数据 方式 这里可以更改缓存方式)
 */
//- (ClientRequestCachePolicy)clientRequestCachePolicy {
//    return ClientReloadIgnoringLocalCacheData;
//}

/**
 *  @author yunFei, 16-01-09 11:01:02
 *
 *  请求超时时间  (在BaseRequest方法中已经默认实现,这里可以自定义每个请求的超时时间)
 *
 */
- (NSTimeInterval)requestTimeoutInterval{
    return 10.f;
}

/**
 *  时候缓存数据  默认为YES
 */
- (BOOL)cacheResponse{
    return NO;
}

/**
 *  处理返回的responseObject数据
 */
//- (id)responseProcess:(id)responseObject{
//    return responseObject[@"error"];
//}


@end
