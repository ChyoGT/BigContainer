//
//  BCNavigationController.m
//  BigContainer
//
//  Created by 张彦东 on 16/3/17.
//  Copyright © 2016年 zhang.yD. All rights reserved.
//

#import "BCNavigationController.h"

@interface BCNavigationController ()

@end

@implementation BCNavigationController


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
}



@end
