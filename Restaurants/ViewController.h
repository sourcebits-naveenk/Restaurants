//
//  ViewController.h
//  Restaurants
//
//  Created by Naveen Katari on 04/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"
#import "RestaurantDetails.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableViewRestaurants;
@property (strong, nonatomic) NSMutableArray *arrayRestaurantNames;
@property (strong, nonatomic) NSMutableArray *arrayRestaurantImages;
@property (strong, nonatomic) RestaurantDetails *restaurantDetails;
@property (strong, nonatomic) TableViewCell *tableViewCell;

@end

