//
//  UIView+TAOFrame.h
//  BuDeJie
//
//  Created by etcxm on 2016/11/14.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TAOFrame)
//写分类的时候，要避免和其他开发者产生冲突!
@property CGFloat tao_Width;
@property CGFloat tao_Height;
@property CGFloat tao_X;
@property CGFloat tao_Y;

@end
