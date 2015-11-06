//
//  MenuViewController.h
//  Restaurants
//
//  Created by Naveen Katari on 05/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuViewCell.h"
#import "RestaurantMenu.h"
@interface MenuViewController : UIViewController < UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSString *restaurantName;
@property (weak, nonatomic) IBOutlet UITableView *tblRestaurantMenu;
@property (strong, nonatomic) RestaurantMenu *restaurantMenu;

@end
