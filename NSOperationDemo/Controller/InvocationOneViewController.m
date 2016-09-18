//
//  InvocationOneViewController.m
//  NSOperationDemo
//
//  Created by 童玉龙 on 16/9/4.
//  Copyright © 2016年 齐滇大圣. All rights reserved.
//

#import "InvocationOneViewController.h"

@implementation InvocationOneViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 60)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"begin" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(operationStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)operationStart{
    
    NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(wiriteName:) object:@"齐滇大圣"];
    
    [operation start];
    
    NSLog(@"operation end");
}

- (void)wiriteName:(NSString *)name{
    
    NSLog(@"%@ %@",name,[NSThread currentThread]);
    sleep(3);
}

@end
