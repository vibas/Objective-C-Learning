//
//  Rectangle.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 26/04/23.
//

#import <Foundation/Foundation.h>
#import "OOPS_Polymorphism.h"

@implementation Rectangle

-(id) initWithLength:(float)_length andBreadth:(float)_breadth
{
    self = [super init];
    length = _length;
    breadth = _breadth;
    return  self;
}

-(void) CalculateArea
{
    area = length * breadth;
}

-(void) PrintArea
{
    NSLog(@"Area of Rectangle : %f" , area);
}

@end
