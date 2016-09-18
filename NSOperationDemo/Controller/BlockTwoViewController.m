//
//  BlockTwoViewController.m
//  NSOperationDemo
//
//  Created by 童玉龙 on 16/9/4.
//  Copyright © 2016年 齐滇大圣. All rights reserved.
//

#import "BlockTwoViewController.h"

@implementation BlockTwoViewController


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 60)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"mainQueue" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(operationStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    UIButton *creatBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 60)];
    creatBtn.backgroundColor = [UIColor redColor];
    [creatBtn setTitle:@"creat Queue" forState:UIControlStateNormal];
    [creatBtn addTarget:self action:@selector(creatOperationStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:creatBtn];
}

- (void)operationStart{
    
    NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^(){
        
        NSLog(@"齐滇大圣 %@",[NSThread currentThread]);
        sleep(3);
    }];
    
    NSOperationQueue *queue = [NSOperationQueue mainQueue];
    
    [queue addOperation:operation];
    
    NSLog(@"operation end");
}

- (void)creatOperationStart{
    
    NSBlockOperation *operation = [NSBlockOperation blockOperationWithBlock:^(){
        
        NSLog(@"齐滇大圣 %@",[NSThread currentThread]);
        sleep(3);
    }];
    
    NSOperationQueue *queue = [NSOperationQueue new];
    
    [queue addOperation:operation];
    
    NSLog(@"operation end");
}

@end
