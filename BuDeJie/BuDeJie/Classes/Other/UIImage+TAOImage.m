//
//  UIImage+TAOImage.m
//  BuDeJie
//
//  Created by etcxm on 2016/11/11.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import "UIImage+TAOImage.h"

@implementation UIImage (TAOImage)

//生成没有渲染的图片
+ (UIImage *)originalImageWithName:(NSString *)name
{
    UIImage *image = [UIImage imageNamed:name];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
