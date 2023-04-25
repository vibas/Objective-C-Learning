//
//  Duck.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 25/04/23.
//

#import <Foundation/Foundation.h>
#import "OOPS_Inheritance.h"

@implementation Duck

-(id) init:(NSString *)_name movementType:(NSString *)_movementType
{
    self = [super init:_name];
    movementType = _movementType;
    return self;
}

@end
