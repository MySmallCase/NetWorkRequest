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

@implementation ViewModel

+ (void)getBannerSuccess:(void (^)(NSString *))success failure :(void (^)(id))failure {
    API *api = [[API alloc] init];
    [api startWithBlockSuccess:^(API *request) {
        BaseModel *model = [BaseModel mj_objectWithKeyValues:request.responseJSONObject];
        if ([model.error isEqualToString:@"0"]) {
            success(model.message);
        }else {
            failure(model.error);
        }
        
    } failure:^(id request) {
        failure(@"请求超时");
    }];
}


@end
