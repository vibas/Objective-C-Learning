//
//  OOPS_Protocol.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 27/04/23.
//

#ifndef OOPS_Protocol_h
#define OOPS_Protocol_h

@protocol PrintProtocolDelegate
@required
- (void)processCompleted;
@optional
- (void)printProcessStartTime;
@end

@interface PrintClass :NSObject
{
   id delegate;
}
- (void) setDelegate:(id)newDelegate;
- (void) printDetails;
@end

@interface PrintProtocolSample:NSObject<PrintProtocolDelegate>
- (void)startAction;
@end

#endif /* OOPS_Protocol_h */
