//
//  Exercise5ViewController.m
//  DebuggingLab
//
//  Created by Hector Zarate on 5/22/16.
//  Copyright © 2016 iOSCowboy. All rights reserved.
//

#import "Exercise5ViewController.h"

@interface Exercise5ViewController ()
@property (nonatomic, getter=shouldChangeBackgroundColor) BOOL changeBackgroundColor;
@end

@implementation Exercise5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.shouldChangeBackgroundColor) {
        self.view.backgroundColor = [UIColor orangeColor];
    }
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
