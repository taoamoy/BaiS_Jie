//
//  TAONavigationViewController.m
//  BuDeJie
//
//  Created by etcxm on 2016/11/15.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import "TAONavigationViewController.h"

@interface TAONavigationViewController ()

@end

@implementation TAONavigationViewController

//统一设置导航条
+(void)load
{
    UINavigationBar *naviBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[TAONavigationViewController class]]];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    [naviBar setTitleTextAttributes:attrs];
    [naviBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
