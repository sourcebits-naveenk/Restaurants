//
//  ViewController.m
//  Restaurants
//
//  Created by Naveen Katari on 04/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "RestaurantListController.h"
#import "MenuViewController.h"

@interface RestaurantListController ()
{
    NSMutableArray *restaurants;
    NSInteger selectedIndex;
}

@end

@implementation RestaurantListController

- (void)viewDidLoad
{
    [super viewDidLoad];
     [_tableViewRestaurants registerNib:[UINib nibWithNibName:@"RestaurantsTableCell" bundle:nil] forCellReuseIdentifier:@"CustomCell"];
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"RestaurantDetails" ofType:@"plist"];
    NSDictionary *plistDict = [NSDictionary dictionaryWithContentsOfFile:path];
    
    restaurants = [[NSMutableArray alloc]init];
    
    for(int i=0; i < 5; i++)
    {
        
        _restaurantDetails = [[RestaurantDetails alloc]init];
    _restaurantDetails.restaurantNames = [[plistDict objectForKey:@"Restaurants"]objectAtIndex:i];
    _restaurantDetails.restaurantImages = [[plistDict objectForKey:@"RestaurantLogo"]objectAtIndex:i];
        [restaurants addObject:_restaurantDetails];
        _tableViewRestaurants.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [ restaurants count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomCell";
    RestaurantsTableCell *cell = (RestaurantsTableCell *)[_tableViewRestaurants dequeueReusableCellWithIdentifier:CellIdentifier];
    self.restaurantDetails = restaurants[indexPath.row];
    cell.restaurantNameLabel.text = _restaurantDetails.restaurantNames;
    cell.restaurantLogo.image = [UIImage imageNamed:_restaurantDetails.restaurantImages];
    cell.restaurantLogo.contentMode = UIViewContentModeScaleAspectFill;
    cell.restaurantLogo.layer.cornerRadius = 10.0f;
    cell.restaurantLogo.clipsToBounds = YES;
    cell.restaurantLogo.layer.borderWidth = 3.0f;
    cell.restaurantLogo.layer.borderColor = [UIColor whiteColor].CGColor;
    return cell;
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  selectedIndex = indexPath.row;
  [self performSegueWithIdentifier:@"ShowMenu" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    self.restaurantDetails = restaurants[selectedIndex];

    MenuViewController *destViewController = (MenuViewController*)segue.destinationViewController;
    [ destViewController setRestaurantName:_restaurantDetails.restaurantNames];

}
@end
