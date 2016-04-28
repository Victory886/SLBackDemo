//
//  SecondViewController.m
//  SLBackDemo
//
//  Created by 收付宝－胜利 on 16/1/20.
//  Copyright © 2016年 收付宝－胜利. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "UIViewController+SLBackBtnAndViewExe.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
//    [self backBtnWithTitle:@"返返回"];
    [self backBtnWithTitle:@"我要返回到第一个" action:@selector(backHome)];
}

- (void)backHome {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.navigationController pushViewController:[ThirdViewController alloc] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
