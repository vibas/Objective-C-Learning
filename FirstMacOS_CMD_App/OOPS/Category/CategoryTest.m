//
//  CategoryTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 27/04/23.
//

#import <Foundation/Foundation.h>
#import "OOPS_Category.h"

@implementation NSString(MyNSStringCategory)

+(NSString *)getCopyRightString
{
   return @"Copyright@2023";
}

+(NSString *) getRandomStringWithLength:(int)length
{
    static NSString *randStr = @"";
    for(int i=0; i<length; i++)
    {
        // Generate a random number to select upper case or lower case
        int randNum_alpha_case = arc4random_uniform(2);
        
        // Set alpha range as per alpha case - if upper case 65 || if lower case 97
        int alphaRange = randNum_alpha_case == 0 ? 65 : 97;
        
        // Generate a random number with range of 0-26 and add it with alpha range
        // ASCII character - Caps starts with 65 number || small starts with 97
        int randNum = arc4random_uniform(26)+alphaRange;
        
        // Temporary NSString to append random character
        NSString *s = @"";
        s = [s stringByAppendingFormat:@"%c",randNum];
        
        // Append temp string s to our random string
        randStr = [randStr stringByAppendingString:s];
    }
    return randStr;
}
@end
