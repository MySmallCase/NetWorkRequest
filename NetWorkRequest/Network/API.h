//
//  API.h
//  Network
//
//  Created by MyMac on 16/1/5.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "BaseRequest.h"

@interface API : BaseRequest<APIRequest>

- (instancetype)initWithUserID:(NSString *)userID;

@end
