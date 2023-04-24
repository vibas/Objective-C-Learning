//
//  StringTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 24/04/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"

@implementation StringTest

-(void) TestString
{
    NSString *str = @"HELLO WORLD";
    NSString *str_2 = @"HOW ARE YOU?";
    char *char_ptr = "World";
    
    NSLog(@"*str = %@",str);
    NSLog(@"*char_ptr = %s",char_ptr);
    
    // Get capitalized string
    NSLog(@"*str in Capitalised form = %@",[str capitalizedString]);
    NSLog(@"*str in lower case form = %@",[str lowercaseString]);
    
    // Get character at index
    int index = 0;
    NSLog(@"character at index %d in *str is %c",index,[str characterAtIndex:index]);
    
    // Get number from string
    NSString *str_double = @"15.2345";
    double d = [str_double doubleValue];
    int i = [str_double intValue];
    NSLog(@"d =  %f || i = %d", d, i);
    
    // Get length of the string
    NSLog(@"*str = %@ & its length = %lu", str, (unsigned long)[str length]);
    
    // Get substring from/to index
    NSLog(@"*str = %@ & substring to index 5 = %@", str, [str substringToIndex:5]);
    NSLog(@"*str = %@ & substring from index 5 = %@", str, [str substringFromIndex:5]);
    
    // Init with format
    NSString *str3 = [[NSString alloc] initWithFormat:@"\n%@\n%@",str,str_2];
    NSLog(@"Using initWithFormat:   %@\n", str3 );
    
    // Appending string
    NSString *str4 = [str stringByAppendingFormat:@"!!!!!!"];
    NSLog(@"Concatenated string:   %@\n", str4 );
}

@end
