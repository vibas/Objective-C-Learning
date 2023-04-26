//
//  main.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 03/03/23.
//

#import <Foundation/Foundation.h>
#import "Lession.h"

int main(int argc, const char * argv[])
{
    // Test command line arguments. Select Scheme -> Arguments -> set/change arguments
    NSLog(@" ========== App Name : %s | App Version : %s ======= ", argv[1], argv[2]);
    
    @autoreleasepool
    {
//        Lession *basic = [Basic alloc];
//        [basic Learn];
        
        Lession *oops = [OOPS alloc];
        [oops Learn];
    }
    return 0;
}
