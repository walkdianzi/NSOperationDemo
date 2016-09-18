//
//  BlockOneViewController.m
//  NSOperationDemo
//
//  Created by 童玉龙 on 16/9/4.
//  Copyright © 2016年 齐滇大圣. All rights reserved.
//

#import "BlockOneViewController.h"

@implementation BlockOneViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 60)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"begin" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(operationStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)operationStart{
    
    NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^(){
        
        NSLog(@"齐滇大圣 %@",[NSThread currentThread]);
        sleep(3);
    }];
    
    // 开始执行任务
    [operation start];
    
    NSLog(@"operation end");
}

@end
