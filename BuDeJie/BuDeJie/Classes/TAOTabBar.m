//
//  TAOTabBar.m
//  BuDeJie
//
//  Created by etcxm on 2016/11/13.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import "TAOTabBar.h"
//#import "UIView+TAOFrame.h"

@interface TAOTabBar ()


@property (nonatomic,weak) UIButton *plusBtn;

@end

@implementation TAOTabBar

- (UIButton*)plusBtn
{
    if (_plusBtn == nil) {
        UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [plusButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [plusButton sizeToFit];
        _plusBtn = plusButton;
        [self addSubview:plusButton];
    }
    return _plusBtn;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
//    NSLog(@"%@",self.subviews);
    NSInteger count = self.items.count + 1;
    CGFloat btnWidth = self.frame.size.width/count;
    CGFloat btnHeight = self.frame.size.height;
    NSInteger i = 0;
    CGFloat btnX = 0;
    for (UIView *tabBarButton in self.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i==2) {
                i +=1;
            }
            btnX = i*btnWidth;
            tabBarButton.frame = CGRectMake(btnX, 0, btnWidth, btnHeight);
            i++;
        }
    }
    //设置加号按钮center
    self.plusBtn.center = CGPointMake(self.tao_Width * 0.5, self.tao_Height * 0.5);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
