//
//  Bird.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 25/04/23.
//

#import <Foundation/Foundation.h>
#import "OOPS_Inheritance.h"

@implementation Bird

-(id) init:(NSString *)_name
{
    self = [super init];
    name = _name;
    return self;
}

-(void) PrintBirdInfo
{
    NSLog(@"Bird Name : %@", name);
    NSLog(@"Bird Movement Type : %@",movementType);
}
@end
