//
//  ViewController.m
//  SLBackDemo
//
//  Created by 收付宝－胜利 on 16/1/20.
//  Copyright © 2016年 收付宝－胜利. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.navigationController pushViewController:[FirstViewController alloc] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
