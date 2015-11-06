//
//  RestaurantMenu.h
//  Restaurants
//
//  Created by Naveen Katari on 05/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestaurantMenu : NSObject

@property (nonatomic, strong) NSMutableArray *barbequeNationMenu;
@property (nonatomic, strong) NSMutableArray *absoluteBarbequeMenu;
@property (nonatomic, strong) NSMutableArray *biryaniBowlMenu;
@property (nonatomic, strong) NSMutableArray *meghanaFoodsMenu;
@property (nonatomic, strong) NSMutableArray *kfcMenu;

-(void) getRestaurantMenu;

@end
