//
//  ViewController.m
//  LocationList
//
//  Created by Nutech Systems on 5/12/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import "LocationListVC.h"

@interface LocationListVC ()

@end

@implementation LocationListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    _locations = [[NSMutableArray alloc]init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
    return _locations.count;
}
-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath{
    static NSString *cellID = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    return cell;

}
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    [self performSegueWithIdentifier:@"toDetailVC" sender:indexPath];



}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"toDetailVC"]){
        //set an addLocationVC object to the segue's destination VC
        //set delegat property of AddLocationVC to self;
    
    }else if([segue.identifier isEqualToString:@"toAddVC"]){
    
        ///create a pointer to an NSIndexPath and assign the sender variable to it
        //get the object at the index of the array according to the index path.row
        //Assign that object to a proxy property located in locationDetailVC that corresponds
        //to the same type allowing us to pass the entire object and display the location
        //for that object
    
    
    }
    


}


@end