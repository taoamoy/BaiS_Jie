//
//  TAOEssenceViewController.m
//  BuDeJie
//
//  Created by etcxm on 2016/11/10.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import "TAOEssenceViewController.h"

@interface TAOEssenceViewController ()

@end

@implementation TAOEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //测试设置随机颜色
    self.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:0.8];
    
    [self setUpNaviBar];
   
    
}
//设置导航条
-(void)setUpNaviBar
{
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"nav_item_game_icon"] heigLightImage:[UIImage imageNamed:@"nav_item_game_click_icon"] Target:self action:@selector(navi_leftAction:)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"navigationButtonRandom"] heigLightImage:[UIImage imageNamed:@"navigationButtonRandomClick"] Target:nil action:nil];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
}

-(void)navi_leftAction:(UIButton *)button
{
    NSLog(@"%s",__func__);
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
