//
//  Exercise1ViewController.m
//  DebuggingLab
//
//  Created by Hector Zarate on 5/22/16.
//  Copyright © 2016 iOSCowboy. All rights reserved.
//

#import "Exercise1ViewController.h"
#import "AppDelegate.h"


@interface Exercise1ViewController ()
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, unsafe_unretained) NSArray *numbers;
@end

@implementation Exercise1ViewController

- (instancetype)init
{
    if (self) {
        _numbers = @[@(138882),
                     @(self.hash + 42342902),
                     @(0x2A3333),
                     @(0x00001>>0x00001),
                     @(M_PI),
                     @(-INT_MAX+1)];
    }
    
    return self;
}

- (void)viewDidLoad {
    self.title = [NSString stringWithFormat:@"Number: %@", self.numbers[rand() % self.numbers.count]];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
