//
//  NSNumberTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 18/04/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"

@implementation NSNumberTest
- (NSNumber *)multiply:(NSNumber *)a b:(NSNumber *)b
{
   float number1 = [a floatValue];
   float number2 = [b floatValue];
   float product = number1 * number2;
   NSNumber *result = [NSNumber numberWithFloat:product];
   return result;
}
@end
