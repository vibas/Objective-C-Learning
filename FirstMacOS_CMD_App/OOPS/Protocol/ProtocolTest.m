//
//  ProtocolTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 27/04/23.
//

#import <Foundation/Foundation.h>
#import "OOPS_Protocol.h"

@implementation PrintClass

- (void) setDelegate:(id)newDelegate
{
   delegate = newDelegate;
}

- (void)printDetails
{
   NSLog(@"Printing Details");
   [delegate printDetails];
}

@end

@implementation PrintProtocolSample
- (void)startAction
{
   PrintClass *printClass = [[PrintClass alloc]init];
   [printClass setDelegate:self];
   [printClass printDetails];
}

// This method must be implemented as it is under @required in the protocol
-(void)processCompleted
{
   NSLog(@"Printing Process Completed");
}

// This method is optional for confirming the protocol
//-(void) printProcessStartTime
//{
//
//}

@end
