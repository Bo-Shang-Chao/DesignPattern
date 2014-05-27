//
//  ViewController.m
//  DesignPattern
//
//  Created by nfuadmin6 on 14/3/14.
//  Copyright (c) 2014年 nfuadmin6. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)NSArray *data;
@end

@implementation ViewController
@synthesize data;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSArray *Creational = [[NSArray alloc]initWithObjects:@"Simple Factory",@"Abstract Factory",@"Factory Method",@"Builder",@"Prototype",@"Singleton",@"Registry of Singleton", nil];
    NSArray *Structural = [[NSArray alloc]initWithObjects:@"Default Adapter",@"Object Adapter",@"Class Adapter",@"Bridge",@"Composite",@"Decorator",@"Facade",@"Flyweight",@"Proxy", nil];
    NSArray *Behavioral = [[NSArray alloc]initWithObjects:@"Chain of Responsibility",@"Command",@"Iterator",@"Strategy",@"Template Method",@"Observer",@"Mediator",@"State",@"Memento",@"Visitor",@"Interpreter", nil];
    NSArray *MultiThreaded = [[NSArray alloc]initWithObjects:@"Guarded Suspension",@"Producer Consumer",@"Thread-Pre-Message",@"Work Thread",@"Thread Pool",@"Future",@"Read-Write-Lock",@"Two-phase Termination",@"Thread-Specific Storage", nil];
    
    data = [[NSArray alloc]initWithObjects:Creational,Structural,Behavioral,MultiThreaded, nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [data count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSArray *dataArray = [data objectAtIndex:section];
    return [dataArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath{
    return 40;//return row height
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30; //return the header of Section height
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;//return the footer of Section height
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSArray *sectionTitle = [[NSArray alloc]initWithObjects:@"Creational",@"Structural",@"Behavioral",@"MultiThreaded", nil];
    return [sectionTitle objectAtIndex:section];//return the title of header in Section
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    NSArray *dataArray = [data objectAtIndex:indexPath.section];
    cell.textLabel.text = [dataArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
