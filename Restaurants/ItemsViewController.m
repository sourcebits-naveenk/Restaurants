//
//  ItemsViewController.m
//  Restaurants
//
//  Created by Naveen Katari on 06/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "ItemsViewController.h"
#import "DrawString.h"
#import <QuartzCore/QuartzCore.h>

@interface ItemsViewController ()
@property (weak, nonatomic) IBOutlet DrawString *orderView;

@end

@implementation ItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [ _selectedItemLabel text];
    [ self.orderView setHidden:YES ];
    
}
//Single tap will display the order status
- (IBAction)tapHandler:(id)sender
{
    
    [ self.orderView setHidden:NO ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
