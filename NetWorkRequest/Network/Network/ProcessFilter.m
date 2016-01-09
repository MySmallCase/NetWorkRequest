//
//  ProcessFilter.m
//  Network
//
//  Created by MyMac on 16/1/5.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "ProcessFilter.h"
#import "BaseRequest.h"

@implementation ProcessFilter

- (NSMutableDictionary *)processArgumentWithRequest:(NSMutableDictionary *)argument{
    
    //应用版本
    argument[@"app_version"] = [NSString stringWithFormat:@"%@",[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
        
    
    return argument;
}

- (id) processResponseWithRequest:(id)response{
    return nil;
}

@end
