//
//  Exercise4ViewController.m
//  DebuggingLab
//
//  Created by Hector Zarate on 5/22/16.
//  Copyright © 2016 iOSCowboy. All rights reserved.
//

#import "Exercise4ViewController.h"
#import "NumberGenerator.h"

@interface Exercise4ViewController ()
@property (nonatomic, strong) NSMutableArray *numbers;

@end

@implementation Exercise4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.numbers = [NSMutableArray array];
    
    NSArray *numbers = [NumberGenerator arrayOfNumbersWithOneCharacter];
    
    for (NSInteger index= 0; index < numbers.count; index++) {
        [self.numbers addObject:numbers[index]];
    }
    
    // 1. Print the index of the non-number element.
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
