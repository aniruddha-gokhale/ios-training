//
//  ViewController.m
//  SimpleTable
//
//  Created by GDB Consultants on 23/11/15.
//  Copyright (c) 2015 GDB Consultants. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SimpleTableCellTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController{
    
    NSArray *tabelData;
    NSArray *thumbnails;
    NSArray *Time;
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*tabelData=[NSArray arrayWithObjects:@"Egg Benedict",@"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
    thumbnails=[NSArray arrayWithObjects: @"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg", nil];
    
    Time =[NSArray arrayWithObjects:@"30min", @"20min", @"40min", @"20min", @"20min", @"35min", @"40min", @"15min", @"25min", @"10min", @"30min", @"30min", @"10min", @"40min", @"45min", @"35min", nil];*/

    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    tabelData = [dict objectForKey:@"RecipeName"];
    thumbnails = [dict objectForKey:@"Thumbnail"];
    Time = [dict objectForKey:@"PrepTime"];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [tabelData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    SimpleTableCellTableViewCell *cell = (SimpleTableCellTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [tabelData objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text =[Time objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIAlertView *messageAlert=[[UIAlertView alloc]initWithTitle:@"Row Selected" message:[tabelData objectAtIndex:indexPath.row] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [messageAlert show];
    
    UITableViewCell *cell=[tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType=UITableViewCellAccessoryCheckmark;
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
