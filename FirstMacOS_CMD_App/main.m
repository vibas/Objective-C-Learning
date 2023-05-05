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
        // Create lession object and call its Learn method
        Lession *lession = [FOUNDATION_FRAMEWORK alloc];
        [lession Learn];
    }
    return 0;
}
