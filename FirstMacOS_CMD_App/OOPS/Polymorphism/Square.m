//
//  Square.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 26/04/23.
//

#import <Foundation/Foundation.h>
#import "OOPS_Polymorphism.h"

@implementation Square

-(id) initWithSide:(float)side
{
    self = [super init];
    length = side;
    return self;
}

-(void) CalculateArea
{
    area = length * length;
}

-(void) PrintArea
{
    NSLog(@"Area of Square : %f" , area);
}

@end
