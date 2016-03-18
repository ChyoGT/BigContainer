//
//  BCTabBarController.m
//  BigContainer
//
//  Created by 张彦东 on 16/3/17.
//  Copyright © 2016年 zhang.yD. All rights reserved.
//

#import "BCTabBarController.h"
#import "BCNavigationController.h"

@interface BCTabBarController ()

@end

@implementation BCTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray * barItemClassNameArray = @[@"QDHomeViewController",
                                        @"QDNewFinanceViewController",
                                        //                                        @"QDShopViewController",
                                        @"QDProfileViewController"];
    NSArray * barItemTitleArray = @[@"首页", @"理财", @"我的"];
    NSArray * barItemImageNameArray = @[@"tabbar_home_normal",
                                        @"tabbar_finance_normal",
                                        //                                        @"tabbar_shop_normal",
                                        @"tabbar_profile_normal"];
    NSArray * barItemSelectedImageNameArray = @[@"tabbar_home_selected",
                                                @"tabbar_finance_selected",
                                                //                                                @"tabbar_shop_selected",
                                                @"tabbar_profile_selected"];
    
    for (int i = 0; i < barItemClassNameArray.count; i++) {
        [self addChildViewControllerWithClassName:barItemClassNameArray[i]
                                            title:barItemTitleArray[i]
                                        imageName:barItemImageNameArray[i]
                                selectedImageName:barItemSelectedImageNameArray[i]];
    }
    
}

- (void)addChildViewControllerWithClassName:(NSString *)className
                                      title:(NSString *)title
                                  imageName:(NSString *)imageName
                          selectedImageName:(NSString *)selectedImageName {
    UIViewController * controller = [[NSClassFromString(className) alloc] init];
    BCNavigationController * navController = [[BCNavigationController alloc] initWithRootViewController:controller];
    [self addChildViewController:navController];
    UIImage * image = [UIImage imageNamed:imageName];
    UIImage * selectedImage = [UIImage imageNamed:selectedImageName];
    navController.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navController.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    navController.tabBarItem.title = title;
}

@end
