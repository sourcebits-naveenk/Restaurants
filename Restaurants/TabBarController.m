//
//  TabBarController.m
//  Restaurants
//
//  Created by Naveen Katari on 06/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()


@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[[ self.tabBar subviews] objectAtIndex:1 ]setHidden:YES];
    self.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
    if (tabBarController.selectedIndex == 0) {
        UINavigationController *navController = (UINavigationController*)viewController;
        [ navController popToRootViewControllerAnimated:YES ];
    }
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
