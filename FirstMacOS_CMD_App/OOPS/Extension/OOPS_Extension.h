//
//  OOPS_Extension.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 27/04/23.
//

#ifndef OOPS_Extension_h
#define OOPS_Extension_h

@interface ExtensionSampleClass : NSObject
{
   NSString *name;
}
- (id)init;
- (void)setInternalID;
- (NSString *)getExternalID;
-(NSString *)getName;

@end

@interface ExtensionSampleClass()
{
   NSString *internalID;
}

@end

#endif /* OOPS_Extension_h */
