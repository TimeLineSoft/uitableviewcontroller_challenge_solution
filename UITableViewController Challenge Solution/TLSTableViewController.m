//
//  TLSTableViewController.m
//  UITableViewController Challenge Solution
//
//  Created by Pepe Sosa on 10/07/14.
//  Copyright (c) 2014 TimeLine Soft. All rights reserved.
//

#import "TLSTableViewController.h"

@interface TLSTableViewController ()

@end

@implementation TLSTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.contenidoArray = [@[] mutableCopy];
    
    NSString *elemento1 = @"Cell 1";
    NSString *elemento2 = @"Cell 2";
    NSString *elemento3 = @"Cell 3";
    NSString *elemento4 = @"Elemento 4";
    NSString *elemento5 = @"Elemento 5";
    NSString *elemento6 = @"Elemento 6";
    
    [self.contenidoArray addObject:elemento1];
    [self.contenidoArray addObject:elemento2];
    [self.contenidoArray addObject:elemento3];
    [self.contenidoArray addObject:elemento4];
    [self.contenidoArray addObject:elemento5];
    [self.contenidoArray addObject:elemento6];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    
    if (section == 0) {
        return 2;
    }else if (section == 1){
        return 1;
    }else{
        return 3;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifierCell = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierCell forIndexPath:indexPath];
    
    // Configure the cell...
    
    if (indexPath.section == 0) {
        cell.textLabel.text = @"Estoy en la sección: 0";
        cell.backgroundColor = [UIColor redColor];
    }else if (indexPath.section == 1){
        cell.textLabel.text = @"Otra Sección";
        cell.backgroundColor = [UIColor blueColor];
    }else{
        cell.textLabel.text = [NSString stringWithFormat:@"Cell %i", indexPath.row];
        cell.backgroundColor = [UIColor yellowColor];
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
