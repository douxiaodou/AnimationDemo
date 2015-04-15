//
//  TabbarViewController.m
//  AnimationDemo
//
//  Created by daoneng on 15/4/9.
//  Copyright (c) 2015年 dawningsun. All rights reserved.
//

#import "TabbarViewController.h"

@interface TabbarViewController ()

@end

@implementation TabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:31.0/255.0 green:167/255.0 blue:213/255.0 alpha:1.0], NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    

    
    
    NSArray *titleArr  = [NSArray arrayWithObjects:@"主页", @"日历", @"个人中心", nil];
    NSArray *normalArr = [NSArray arrayWithObjects:@"index_home_tab", @"index_collect_tab", @"index_centre_tab", nil];
    NSArray *selectArr = [NSArray arrayWithObjects:@"index_home_tab_selected", @"index_collect_tab_selected", @"index_centre_tab_selected", nil];
    
    
    for (int index=0; index < self.viewControllers.count; index++) {
        
        UINavigationController * navigationViewController = [self.viewControllers  objectAtIndex:index];
        
        //设置UIImage的渲染方式为UIImageRenderingModeAlwaysOriginal
        UIImage * normalImage = [[UIImage imageNamed:[normalArr objectAtIndex:index]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIImage * selectImage = [[UIImage imageNamed:[selectArr objectAtIndex:index]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        //不设置title时 设置空值就可以了
        navigationViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:[titleArr objectAtIndex:index] image:normalImage selectedImage:selectImage];
//        navigationViewController.tabBarItem.imageInsets = UIEdgeInsetsMake(6,0,-6,0);
        navigationViewController.tabBarItem.tag = index;
//        [navigationViewController.tabBarItem setTitlePositionAdjustment: UIOffsetMake(0,-3)];
        
    }
    
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
