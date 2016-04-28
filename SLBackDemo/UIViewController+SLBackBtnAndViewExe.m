//
//  UIViewController+SLBackBtnAndViewExe.m
//  SLBackDemo
//
//  Created by 收付宝－胜利 on 16/1/20.
//  Copyright © 2016年 收付宝－胜利. All rights reserved.
//

#import "UIViewController+SLBackBtnAndViewExe.h"


@implementation UIViewController (SLBackBtnAndViewExe)


- (void)backBtnWithTitle:(NSString *)btnTitle {
    
    SLBackBtn *btn = [[SLBackBtn alloc] init];
    [btn setTitle:btnTitle forState:(UIControlStateNormal)];
    
    [btn addTarget:self action:@selector(back)
  forControlEvents:(UIControlEventTouchUpInside)];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = rightItem;
    
}

- (void)backBtnWithTitle:(NSString *)btnTitle action:(SEL)action {
    
    SLBackBtn *btn = [[SLBackBtn alloc] init];
    [btn setTitle:btnTitle forState:(UIControlStateNormal)];
    
    [btn addTarget:self action:action
  forControlEvents:(UIControlEventTouchUpInside)];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    self.navigationItem.leftBarButtonItem = rightItem;
}

//- (void)backBtnWithTitle:(NSString *)btnTitle
//                 handler:(SLBackBtn *)handler {
//    SLBackBtn *btn = [[SLBackBtn alloc] init];
//    [btn setTitle:btnTitle forState:(UIControlStateNormal)];
//
//    [btn addTarget:self action:@selector(btnTapped:)
//  forControlEvents:(UIControlEventTouchUpInside)];
//    
//    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
//    self.navigationItem.leftBarButtonItem = rightItem;
//}

- (void)back {
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end

#define SLMargin 5

@implementation SLBackBtn


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont boldSystemFontOfSize:14];
        //        [self setTitle:@"返回返回" forState:(UIControlStateNormal)];
        [self setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [self setImage:[UIImage imageNamed:@"back"] forState:UIControlStateSelected];
    }
    return self;
}

// 目的：想在系统计算和设置完按钮的尺寸后，再修改一下尺寸
/**
 *  重写setFrame:方法的目的：拦截设置按钮尺寸的过程
 *  如果想在系统设置完控件的尺寸后，再做修改，而且要保证修改成功，一般都是在setFrame:中设置
 */
- (void)setFrame:(CGRect)frame {
    
    frame.size.width += SLMargin;
    [super setFrame:frame];
    
    // 1.计算titleLabel的frame
    self.imageView.x = -15;
    
    // 2.计算imageView的frame
    self.titleLabel.x = CGRectGetMaxX(self.imageView.frame) - SLMargin;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    // 如果仅仅是调整按钮内部titleLabel和imageView的位置，那么在layoutSubviews中单独设置位置即可
    
    // 1.计算titleLabel的frame
    self.imageView.x = -15;
    
    // 2.计算imageView的frame
    self.titleLabel.x = CGRectGetMaxX(self.imageView.frame) - SLMargin;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    
    [super setTitle:title forState:state];
    
    // 只要修改了文字，就让按钮重新计算自己的尺寸
    [self sizeToFit];
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state {
    
    [super setImage:image forState:state];
    
    // 只要修改了图片，就让按钮重新计算自己的尺寸
    [self sizeToFit];
}

@end



@implementation UIView (Extension)

- (void)setX:(CGFloat)x {
    
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setY:(CGFloat)y {
    
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)x {
    
    return self.frame.origin.x;
}

- (CGFloat)y {
    
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX {
    
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX {
    
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY {
    
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY {
    
    return self.center.y;
}

- (void)setWidth:(CGFloat)width {
    
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height {
    
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height {
    
    return self.frame.size.height;
}

- (CGFloat)width {
    
    return self.frame.size.width;
}

- (void)setSize:(CGSize)size {
    
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size {
    
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin {
    
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin {
    
    return self.frame.origin;
}

@end