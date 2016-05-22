//
//  Exercise2ViewController.m
//  DebuggingLab
//
//  Created by Hector Zarate on 5/22/16.
//  Copyright © 2016 iOSCowboy. All rights reserved.
//

#import "Exercise2ViewController.h"

@interface Exercise2ViewController ()

@end

@implementation Exercise2ViewController

- (void)viewDidLoad {
    
    NSURL *textURL = [[NSBundle mainBundle] URLForResource:@"StringFile"
                                             withExtension:@"txt"];
    
    NSError *error;
    
    NSString *exampleString = [[NSString alloc] initWithContentsOfURL:textURL
                                                             encoding:NSUTF8StringEncoding
                                                                error:&error];
    
    NSRange range = [exampleString rangeOfString:@"genius"];
    exampleString = [exampleString substringWithRange:NSMakeRange(range.location,
                                                                  range.location+1)];
    range = [exampleString rangeOfString:@"genius!"];
    exampleString = [exampleString substringWithRange:NSMakeRange(range.location,
                                                                  range.location+1)];
    
    NSLog(@"%@", exampleString);
    
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

