//
//  UIBarButtonItem+TAOItem.m
//  BuDeJie
//
//  Created by etcxm on 2016/11/14.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import "UIBarButtonItem+TAOItem.h"

@implementation UIBarButtonItem (TAOItem)

+ (UIBarButtonItem *)itemWithImage:(UIImage *)image heigLightImage:(UIImage *)HLimage Target:(id)target action:(SEL)action
{
    //1.先创建BTN
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:HLimage forState:UIControlStateHighlighted];
    //2.让按钮自适应
    [btn sizeToFit];
    //3.创建包含容器
    UIView *containView = [[UIView alloc] initWithFrame:btn.bounds];
    [containView addSubview:btn];
    //4.创建item
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:containView];
}

+ (UIBarButtonItem *)itemWithImage:(UIImage *)image selectedImage:(UIImage *)HLimage Target:(id)target action:(SEL)action
{
    //1.先创建BTN
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:HLimage forState:UIControlStateSelected];
    //2.让按钮自适应
    [btn sizeToFit];
    //3.创建包含容器
    UIView *containView = [[UIView alloc] initWithFrame:btn.bounds];
    [containView addSubview:btn];
    //4.创建item
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:containView];
}



@end
