//
//  MenuViewController.m
//  Restaurants
//
//  Created by Naveen Katari on 05/11/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "MenuViewController.h"
#import "ItemsViewController.h"
#import "RestaurantMenu.h"

@interface MenuViewController ()
{
    NSMutableArray *menuArray;
}

@end

@implementation MenuViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _restaurantMenu = [[RestaurantMenu alloc]init];
    menuArray = [[NSMutableArray alloc]init];
    [_restaurantMenuTable registerNib:[UINib nibWithNibName:@"MenuTableCell" bundle:nil] forCellReuseIdentifier:@"MenuCell"];
    [self setTitle:self.restaurantName];
    [self.restaurantMenu getRestaurantMenu];
    if ([self.restaurantName isEqualToString:NSLocalizedString(@"Barbeque Nation", nil)])
    {
        [menuArray addObjectsFromArray:_restaurantMenu.barbequeNationMenu];
    }
 else if ([self.restaurantName isEqualToString:NSLocalizedString(@"Absolute Barbeque", nil)])
    {
        [menuArray addObjectsFromArray:_restaurantMenu.absoluteBarbequeMenu];
    }
  else if ([self.restaurantName isEqualToString:NSLocalizedString(@"Biriyani Bowl", nil)])
    {
        [menuArray addObjectsFromArray:_restaurantMenu.biryaniBowlMenu];
    }
  else if ([self.restaurantName isEqualToString:NSLocalizedString(@"Meghana Foods", nil)])
    {
        [menuArray addObjectsFromArray:_restaurantMenu.meghanaFoodsMenu];
    }
  else if ([self.restaurantName isEqualToString:NSLocalizedString(@"KFC", nil)])
    {
        [menuArray addObjectsFromArray:_restaurantMenu.kfcMenu];
    }
_restaurantMenuTable.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [menuArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"MenuCell";
    MenuTableCell *cell = (MenuTableCell *)[_restaurantMenuTable dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.lblMenuItem.text = [menuArray objectAtIndex:indexPath.row];
    return cell;
    
}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UIStoryboard *mainStoryboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ItemsViewController *itemsViewController  = [[ItemsViewController alloc]init];
    itemsViewController=(ItemsViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"ItemsView"];
    [self.tabBarController setViewControllers:[NSArray arrayWithObjects:self.tabBarController.viewControllers[0], itemsViewController,nil]];
     self.tabBarController.selectedIndex = 1;
     itemsViewController.selectedItemLabel.text = [menuArray objectAtIndex:indexPath.row];
}


@end

