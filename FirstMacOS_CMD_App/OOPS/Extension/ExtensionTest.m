//
//  ExtensionTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 27/04/23.
//

#import <Foundation/Foundation.h>
#import "OOPS_Extension.h"

@implementation SampleClass

-(id)init
{
    self = [super init];
    name = @"Vibas";
    return self;
}

- (void)setInternalID
{
   internalID = [NSString stringWithFormat:
   @"UNIQUEINTERNALKEY%dUNIQUEINTERNALKEY",arc4random()%100];
}

- (NSString *)getExternalID {
   return [internalID stringByReplacingOccurrencesOfString:
   @"UNIQUEINTERNALKEY" withString:@""];
}

-(NSString *)getName
{
    return  name;
}

@end
