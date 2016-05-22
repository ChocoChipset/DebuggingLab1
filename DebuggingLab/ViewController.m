//
//  ViewController.m
//  DebuggingLab
//
//  Created by Hector Zarate on 5/22/16.
//  Copyright © 2016 iOSCowboy. All rights reserved.
//

#import "ViewController.h"
#import "ExerciseViewController.h"
#import "Exercise1ViewController.h"
#import "Exercise2ViewController.h"
#import "Exercise3ViewController.h"
#import "Exercise4ViewController.h"
#import "Exercise5ViewController.h"



@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *menuOptions;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"On Debugging";
    
    self.menuOptions = @[@{@"title": @"Exercise 0",
                           @"class": [ExerciseViewController class]},
                         @{@"title": @"Exercise 1",
                           @"class": [Exercise1ViewController class]},
                         @{@"title": @"Exercise 2",
                           @"class": [Exercise2ViewController class]},
                         @{@"title": @"exercise 3",
                           @"class": [Exercise3ViewController class]},
                         @{@"title": @"Exercise 4",
                           @"class": [Exercise4ViewController class]},
                         @{@"title": @"Exercise 5",
                           @"class": [Exercise5ViewController class]},
                         ];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.menuOptions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"a"];
    
    cell.textLabel.text = self.menuOptions[indexPath.row][@"title"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Class vcClass = self.menuOptions[indexPath.row][@"class"];
    
    UIViewController *vc = [[vcClass alloc] init];
    
    [self.navigationController pushViewController:vc
                                         animated:YES];
}

@end
