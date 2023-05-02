//
//  B.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 02/05/23.
//

#import <Foundation/Foundation.h>
#import "A.h"
#import "B.h"

@implementation B

-(id) init
{
    self = [super init];
    b = 'b';
    return self;
}

-(A *) CaclulateMyAness
{
    A *a = [[A alloc]init];
    return a;
}
-(char) GetMyChar
{
    return b;
}

@end
