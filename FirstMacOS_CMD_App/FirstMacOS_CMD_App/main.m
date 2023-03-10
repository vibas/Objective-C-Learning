//
//  main.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 03/03/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"
#pragma mark

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // HELLO WORLD
        {
            //        NSString *s = @"Hello world!";
            //        NSLog(@"%@", s);
        }
        
        // CALCULATOR
        {
            //        Calculator *calc = [[Calculator alloc] init];
            //        [calc Test];
        }
        
        // LOOP TEST
        {
            LoopTest *loopTest = [[LoopTest alloc]init];
//            [loopTest ForLoop];
//            [loopTest WhileLoop];
//            [loopTest DoWhileLoop];
            [loopTest NestedLoop];
        }
        
        
        
    }
    return 0;
}


