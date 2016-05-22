//
//  NSMutableArray+OrderUtils.m
//  
//
//  Created by Hector Zarate Rea (@hecktorzr) on 1/2/12.
//  2012 hector.mieldemaple.com
//

#import "NSMutableArray+OrderUtils.h"

@implementation NSMutableArray (OrderUtils)


/* Fisher–Yates shuffle */

-(void)shuffle
{
    for (int i = ([self count]-1); i >= 1; --i)
    {
        int j = arc4random() % i;
        
        __strong id tempObject = self[j];
        
        [self replaceObjectAtIndex:j withObject: [self objectAtIndex:i] ];
        [self replaceObjectAtIndex:i withObject:tempObject];
    }

}
    

-(void)reverse
{
    int count = [self count];
    
    for (int i = 0; i < count / 2; ++i) 
    {
        int j = count - i - 1;
        
        __strong id tempObject = self[i];
        
        [self replaceObjectAtIndex:i withObject:[self objectAtIndex:j]];
        [self replaceObjectAtIndex:j withObject:tempObject];
    }
}

@end
