//
//  ViewController.m
//  Network
//
//  Created by MyMac on 16/1/5.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "ViewController.h"
#import <YYCache.h>

#import "ViewModel.h"

@interface ViewController ()

@property (nonatomic,strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(100, 100, 100, 30);
    [button setTitle:@"发送请求" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(getData) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIButton *cleanCache = [[UIButton alloc] init];
    cleanCache.frame = CGRectMake(100, 150, 100, 30);
    [cleanCache setTitle:@"清除缓存" forState:UIControlStateNormal];
    cleanCache.backgroundColor = [UIColor blueColor];
    [self.view addSubview:cleanCache];
    [cleanCache addTarget:self action:@selector(cleanCacheClick) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(100, 200, 100, 30);
    label.text = @"123";
    label.backgroundColor = [UIColor greenColor];
    [self.view addSubview:label];
    self.label = label;
    
}

- (void)cleanCacheClick {
    
//    [[[YYCache alloc] initWithName:ClientRequestCache] removeAllObjects];
}

- (void)getData {
    
    
//    [ViewModel getUserName:^(NSString *name) {
//        self.label.text = name;
//    } failure:^(id failure) {
//        NSLog(@"%@==",failure);
//    }];
    
    [ViewModel getUserNameWithKey:@"D" name:^(NSString *name) {
        self.label.text = name;
    } failure:^(id failure) {
        NSLog(@"failure=%@===",failure);
    }];
    
}


@end
