//
//  NumberGenerator.m
//  DebuggingLab
//
//  Created by Hector Zarate on 5/22/16.
//  Copyright © 2016 iOSCowboy. All rights reserved.
//

#import "NumberGenerator.h"
#import "NSMutableArray+OrderUtils.h"

@implementation NumberGenerator

+ (NSArray *)arrayOfNumbers
{
    NSMutableArray *array = [NSMutableArray array];
    
    for (NSInteger index= 0; index < 200; index++) {
        [array addObject:@(index)];
    }
    
    [array addObject:@"string"];
    
    [array shuffle];
    
    return array;
}

+ (NSArray *)arrayOfNumbersWithOneCharacter
{
    NSMutableArray *array = [[self arrayOfNumbers] mutableCopy];
    
    [array addObject:@"A"];
    
    [array shuffle];
    
    return array;
}

@end
