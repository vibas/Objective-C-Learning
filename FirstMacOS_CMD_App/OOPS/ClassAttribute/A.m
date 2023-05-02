//
//  A.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 02/05/23.
//

#import <Foundation/Foundation.h>
#import "A.h"
#import "B.h"

@implementation A

-(id) init
{
    self = [super init];
    a = 'a';
    return self;
}

-(B *) CalculateMyBness
{
    B *b = [[B alloc]init];
    return b;
}

-(char) GetMyChar
{
    return a;
}
@end
