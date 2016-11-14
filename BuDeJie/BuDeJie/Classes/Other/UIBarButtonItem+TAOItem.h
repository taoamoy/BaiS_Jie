//
//  UIBarButtonItem+TAOItem.h
//  BuDeJie
//
//  Created by etcxm on 2016/11/14.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (TAOItem)

+ (UIBarButtonItem *)itemWithImage:(UIImage *)image heigLightImage:(UIImage *)HLimage Target:(id)target action:(SEL)action;
+ (UIBarButtonItem *)itemWithImage:(UIImage *)image selectedImage:(UIImage *)HLimage Target:(id)target action:(SEL)action;

@end
