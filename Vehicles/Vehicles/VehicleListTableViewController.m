//
//  MasterViewController.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "VehicleListTableViewController.h"

#import "VehicleDetailViewController.h"
#import "Vehicle.h"
#import "Car.h"
#import "Bike.h"
#import "Truck.h"

@interface VehicleListTableViewController ()
@property (nonatomic, strong) NSMutableArray *vehicles;
@end

@implementation VehicleListTableViewController

#pragma mark - View Lifecycle
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    //Initialize the vehicle array
    self.vehicles = [NSMutableArray array];
    
    //Call the setup method
    [self setupVehicleArray];
    
    //Set the title of the View Controller, which will display in the Navigation bar.
    self.title = @"Vehicles";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Data setup
-(void)setupVehicleArray
{
    
    //Create a car.
    Car *mustang = [Car carWithBrandName:@"Ford" modelName:@"Mustang" modelYear:1968
                             powerSource:@"gas engine" numberOfDoors:2 convertible:YES hatchback:NO sunroof:NO];
    //Add it to the array
    [self.vehicles addObject:mustang];
    
    
    Car *outback = [Car carWithBrandName:@"Subaru" modelName:@"Outback" modelYear:1999
                             powerSource:@"gas engine" numberOfDoors:5 convertible:NO hatchback:YES sunroof:NO];
    
    
    [self.vehicles addObject:outback];
    
    
    Car *prius = [Car carWithBrandName:@"Toyota" modelName:@"Prius" modelYear:2007
                           powerSource:@"hybrid engine" numberOfDoors:5 convertible:YES hatchback:YES sunroof:YES];
    
    
    [self.vehicles addObject:prius];
    
    
    //Create a motorcycle
    Bike  *harley = [Bike BikeWithBrandName:@"Harley-Davidson" modelName:@"softTail" modelYear:1979 engineNoise:@"Vrrrrrrrrrrrrrommmmm"];
    
    //Add to array of vehicle
    [self.vehicles addObject:harley];
    
    Bike *kawasaki = [Bike BikeWithBrandName:@"Kawasaki"
                                                     modelName:@"Ninja" modelYear:2005 engineNoise:@"Neeeeeeeeeeeeeeeeow!"];

    [self.vehicles addObject:kawasaki];
    
    
    //Create a truck
    Truck *silverado = [Truck truckWithBrandName:@"Chevrolet" modelName:@"Silverado"
                                       modelYear:2011 powerSource:@"gas engine" wheels:4 cargoCapacityCubicFeet:53];
    
    //Add it to the array
    [self.vehicles addObject:silverado];
    
    //Create another truck
    Truck *eighteenWheeler = [Truck truckWithBrandName:@"Peterbilt" modelName:@"579"
                                             modelYear:2013 powerSource:@"diesel engine" wheels:18 cargoCapacityCubicFeet:408];
    //Add it to the array
    [self.vehicles addObject:eighteenWheeler];
    
    
    
    //Sort the array by the model year
    NSSortDescriptor *modelYear = [NSSortDescriptor sortDescriptorWithKey:@"modelYear" ascending:YES];
    [self.vehicles sortUsingDescriptors:@[modelYear]];
}


#pragma mark - Table View Data Source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.vehicles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Vehicle *rowVehicle = self.vehicles[indexPath.row];
    cell.textLabel.text = [rowVehicle vehicleTitleString];
    return cell;
}

#pragma mark - Segue Handling
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Vehicle *selectedVehicle = self.vehicles[indexPath.row];
        [[segue destinationViewController] setDetailVehicle:selectedVehicle];
    }
}

@end
