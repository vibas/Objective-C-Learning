//
//  BlockTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 15/03/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"

@implementation BlockTest
-(void) FuncionCallWithBlockParam : (CompletionBlock)completionBlock
{
    int BLOCK_COMPLETE_ID = 100;
    NSLog(@"performActionWithCompletion function called");
    completionBlock(BLOCK_COMPLETE_ID);
}
@end

