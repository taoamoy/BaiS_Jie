//
//  UIView+TAOFrame.m
//  BuDeJie
//
//  Created by etcxm on 2016/11/14.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import "UIView+TAOFrame.h"

@implementation UIView (TAOFrame)

//set方法
-(void)setTao_X:(CGFloat)tao_X
{
    CGRect rect = self.frame;
    rect.origin.x = tao_X;
    self.frame = rect;
}

-(void)setTao_Y:(CGFloat)tao_Y
{
    CGRect rect = self.frame;
    rect.origin.y = tao_Y;
    self.frame = rect;

}

-(void)setTao_Width:(CGFloat)tao_Width
{
    CGRect rect = self.frame;
    rect.size.width = tao_Width;
    self.frame = rect;
}

-(void)setTao_Height:(CGFloat)tao_Height
{
    CGRect rect = self.frame;
    rect.size.height = tao_Height;
    self.frame = rect;
}

//get方法
-(CGFloat)tao_X
{
    return self.frame.origin.x;
}

-(CGFloat)tao_Y
{
    return self.frame.origin.y;
}

-(CGFloat)tao_Width
{
    return self.frame.size.width;
}

-(CGFloat)tao_Height
{
    return self.frame.size.height;
}

@end
