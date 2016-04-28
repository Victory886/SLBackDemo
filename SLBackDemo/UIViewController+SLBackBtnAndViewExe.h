//
//  UIViewController+SLBackBtnAndViewExe.h
//  SLBackDemo
//
//  Created by 收付宝－胜利 on 16/1/20.
//  Copyright © 2016年 收付宝－胜利. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SLBackBtn;
@interface UIViewController (SLBackBtnAndViewExe)

/// 给个标题 直接返回
- (void)backBtnWithTitle:(NSString *)btnTitle;

/// 给个标题 返回事件自定义
- (void)backBtnWithTitle:(NSString *)btnTitle action:(SEL)action;

///// 给个标题 返回事件block 来处理
//- (void)backBtnWithTitle:(NSString *)btnTitle
//                 handler:(SLBackBtn.handelr)handler;

@end





typedef void(^tapHandler) (SLBackBtn *sender);

@interface SLBackBtn : UIButton

@property(nonatomic,copy) tapHandler handler;

@end

@interface UIView (Extension)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;

@end
