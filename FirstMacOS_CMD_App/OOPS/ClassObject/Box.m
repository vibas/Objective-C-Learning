//
//  Box.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 25/04/23.
//

#import <Foundation/Foundation.h>
#import "OOPS_ClassObject.h"

@implementation Box

@synthesize Height;

-(id) init : (float)_length breadth:(float)_breadth
{
    self = [super init];
    length = _length;
    breadth = _breadth;
    return self;
}

-(float) Volume
{
    return length * breadth * Height;
}

@end
