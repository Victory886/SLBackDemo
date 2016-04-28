//
//  FirstViewController.m
//  SLBackDemo
//
//  Created by 收付宝－胜利 on 16/1/20.
//  Copyright © 2016年 收付宝－胜利. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "UIViewController+SLBackBtnAndViewExe.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self backBtnWithTitle:@"返回"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.navigationController pushViewController:[SecondViewController alloc] animated:YES];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

@end
