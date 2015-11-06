//
//  RestaurantMenu.m
//  Restaurants
//
//  Created by Naveen Katari on 05/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "RestaurantMenu.h"
#import "RestaurantDetails.h"

@implementation RestaurantMenu


-(void) getRestaurantMenu

{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"RestaurantDetails" ofType:@"plist"];
    NSDictionary *plistDict = [NSDictionary dictionaryWithContentsOfFile:path];
    _barbequeNationMenu = [[NSMutableArray alloc]initWithArray:[plistDict objectForKey:@"Barbeque Nation Menu"]];
    _absoluteBarbequeMenu = [[NSMutableArray alloc]initWithArray:[plistDict objectForKey:@"Absolute Barbeque Menu"]];
    _biryaniBowlMenu = [[NSMutableArray alloc]initWithArray:[plistDict objectForKey:@"Biryani Bowl Menu"]];
   _meghanaFoodsMenu = [[NSMutableArray alloc]initWithArray:[plistDict objectForKey:@"Meghana Foods Menu"]];
    _kfcMenu = [[NSMutableArray alloc]initWithArray:[plistDict objectForKey:@"KFC Menu"]];
}

@end
