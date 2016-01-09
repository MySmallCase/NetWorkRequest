//
//  Model.h
//  Network
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Data;
@interface BaseModel : NSObject


@property (nonatomic, copy) NSString *error;

@property (nonatomic, copy) NSString *message;

@property (nonatomic, strong) Data *data;


@end
@interface Data : NSObject

@property (nonatomic, copy) NSString *username;

@property (nonatomic, copy) NSString *age;

@property (nonatomic, copy) NSString *sex;

@property (nonatomic, copy) NSString *nickname;

@end

