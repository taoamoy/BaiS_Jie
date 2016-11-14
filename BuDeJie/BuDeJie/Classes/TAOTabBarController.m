//
//  TAOTabBarController.m
//  BuDeJie
//
//  Created by etcxm on 2016/11/11.
//  Copyright © 2016年 etcxm. All rights reserved.
//

#import "TAOTabBarController.h"
#import "TAOEssenceViewController.h"
#import "TAONewViewController.h"
#import "TAOPublishViewController.h"
#import "TAOFriendTrendViewController.h"
#import "TAOMeViewController.h"
#import "UIImage+TAOImage.h"
#import "TAOTabBar.h"
#import "TAONavigationViewController.h"

@interface TAOTabBarController ()

@end

@implementation TAOTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //自定义tabbar
    [self setupTabBar];
    
    // Do any additional setup after loading the view.
    [self createAllChildrenCtr];
//    [self itemForChildrenCtr];
}
//设置tabbar
-(void)setupTabBar
{
    //
    TAOTabBar *taoTabBar = [[TAOTabBar alloc] init];
    //这里要用KVC
//    self.tabBar = taoTabBar;
    [self setValue:taoTabBar forKey:@"tabBar"];
}



//创建控制器
- (void)createAllChildrenCtr
{
    //添加tabbar的子控制器。
    //精华
    TAOEssenceViewController *essenceCtr = [[TAOEssenceViewController alloc] init];
    TAONavigationViewController *essenceNavi = [[TAONavigationViewController alloc] initWithRootViewController:essenceCtr];
    [self itemForTabBarSetUp:essenceNavi andTitle:@"精华" andImageName:@"tabBar_essence_icon" withSelectedImageName:@"tabBar_essence_click_icon"];
    [self addChildViewController:essenceNavi];
    //新的
    TAONewViewController *newCtr = [[TAONewViewController alloc] init];
    TAONavigationViewController *newNavi = [[TAONavigationViewController alloc] initWithRootViewController:newCtr];
    [self itemForTabBarSetUp:newNavi andTitle:@"新的" andImageName:@"tabBar_new_icon" withSelectedImageName:@"tabBar_new_click_icon"];
    [self addChildViewController:newNavi];
    //发布
//    TAOPublishViewController *publishCtr = [[TAOPublishViewController alloc] init];
//    [self itemForTabBarSetUp:publishCtr andTitle:nil andImageName:@"tabBar_publish_icon" withSelectedImageName:@"tabBar_publish_click_icon"];
//    publishCtr.tabBarItem.imageInsets = UIEdgeInsetsMake(7, 0, -7, 0);
//    [self addChildViewController:publishCtr];
    
    //关注
    TAOFriendTrendViewController *friTreCtr = [[TAOFriendTrendViewController alloc] init];
    TAONavigationViewController *friTreNavi = [[TAONavigationViewController alloc] initWithRootViewController:friTreCtr];
    [self itemForTabBarSetUp:friTreNavi andTitle:@"关注" andImageName:@"tabBar_friendTrends_icon" withSelectedImageName:@"tabBar_friendTrends_click_icon"];
    [self addChildViewController:friTreNavi];
    
    //我
    TAOMeViewController *meCtr = [[TAOMeViewController alloc] init];
    TAONavigationViewController *meNavi = [[TAONavigationViewController alloc] initWithRootViewController:meCtr];
    [self itemForTabBarSetUp:meNavi andTitle:@"我" andImageName:@"tabBar_me_icon" withSelectedImageName:@"tabBar_me_click_icon"];
    [self addChildViewController:meNavi];
}

////设置控制器的按钮
//- (void)itemForChildrenCtr
//{
//    //创建Item
//    //精华
//    UINavigationController *essenceNavi = self.childViewControllers[0];
//    essenceNavi.tabBarItem.title = @"精华";
//    essenceNavi.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
//    essenceNavi.tabBarItem.selectedImage = [UIImage originalImageWithName:@"tabBar_essence_click_icon"];
////    [UIImage imageNamed:@"tabBar_essence_click_icon"];
//
//    //新的
//    UINavigationController *newNavi = self.childViewControllers[1];
//    newNavi.tabBarItem.title = @"新的";
//    newNavi.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
//    newNavi.tabBarItem.selectedImage = [UIImage originalImageWithName:@"tabBar_new_click_icon"];
////    [UIImage imageNamed:@"tabBar_new_click_icon"];
//    
//    //发布
//    UIViewController *publishCtr = self.childViewControllers[2];
//    publishCtr.tabBarItem.title = @"发布";
//    publishCtr.tabBarItem.image = [UIImage originalImageWithName:@"tabBar_publish_icon"];
//    publishCtr.tabBarItem.selectedImage = [UIImage originalImageWithName:@"tabBar_publish_click_icon"];
////    [UIImage imageNamed:@"tabBar_publish_click_icon"];
//    //关注
//    UINavigationController *friTreNavi = self.childViewControllers[3];
//    friTreNavi.tabBarItem.title = @"关注";
//    friTreNavi.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
//    friTreNavi.tabBarItem.selectedImage = [UIImage originalImageWithName:@"tabBar_friendTrends_click_icon"];
////    [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
//    //我
//    UINavigationController *meNavi = self.childViewControllers[4];
//    meNavi.tabBarItem.title = @"我";
//    meNavi.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
//    meNavi.tabBarItem.selectedImage = [UIImage originalImageWithName:@"tabBar_me_click_icon"];
//    
//    //富文本
//    //普通状态
//    NSMutableDictionary *normalDic = [NSMutableDictionary dictionary];
//    normalDic[NSFontAttributeName] = [UIFont systemFontOfSize:9.0];
//    normalDic[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
//    //选中状态
//    NSMutableDictionary *selectDic = [NSMutableDictionary dictionary];
//    selectDic[NSFontAttributeName] = [UIFont systemFontOfSize:9.0];
//    selectDic[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
//    
//    //分别设置
////     [viewCtr1.tabBarItem setTitleTextAttributes:normalDic forState:UIControlStateNormal];
//    
//    //统一设置字体
//    [[UITabBarItem appearance] setTitleTextAttributes:normalDic forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:selectDic forState:UIControlStateSelected];
//    
//}

//设置每个TabBar的每个Item
#pragma mark Item设置
- (void)itemForTabBarSetUp:(UIViewController *)viewCtr andTitle:(NSString *)title andImageName:(NSString *)imgName withSelectedImageName:(NSString *)selectedImage
{
    
    //item图片
    viewCtr.tabBarItem.title = title;
    viewCtr.tabBarItem.image = [UIImage originalImageWithName:imgName];
    viewCtr.tabBarItem.selectedImage = [UIImage originalImageWithName:selectedImage];
    //item文字
    //富文本
    //普通状态
    NSMutableDictionary *normalDic = [NSMutableDictionary dictionary];
    normalDic[NSFontAttributeName] = [UIFont systemFontOfSize:9.0];
    normalDic[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    //选中状态
    NSMutableDictionary *selectDic = [NSMutableDictionary dictionary];
    selectDic[NSFontAttributeName] = [UIFont systemFontOfSize:9.0];
    selectDic[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    //统一设置字体
//    [[UITabBarItem appearance] setTitleTextAttributes:normalDic forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:selectDic forState:UIControlStateSelected];
    
    [[UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[[TAOTabBarController class]]] setTitleTextAttributes:normalDic forState:UIControlStateNormal];
    [[UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[[TAOTabBarController class]]] setTitleTextAttributes:selectDic forState:UIControlStateSelected];
    
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
