//
//  Exercise3ViewController.m
//  DebuggingLab
//
//  Created by Hector Zarate on 5/22/16.
//  Copyright © 2016 iOSCowboy. All rights reserved.
//

#import "Exercise3ViewController.h"
#import "NumberGenerator.h"


@interface Exercise3ViewController ()
@property (nonatomic, strong) NSMutableArray *numbers;
@end

@implementation Exercise3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numbers = [NSMutableArray array];
    
    NSArray *numbers = [NumberGenerator arrayOfNumbers];
    
    for (NSNumber *number in numbers) {
        [self.numbers addObject:number];
    }
    
    // 1. Print all the numbers without using NSLog.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
