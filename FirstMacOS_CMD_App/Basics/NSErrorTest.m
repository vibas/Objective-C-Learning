//
//  NSErrorTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 25/04/23.
//

#import <Foundation/Foundation.h>
#import "Basics.h"

@implementation NSErrorTest

-(NSString *) getEmployeeNameForID:(int) id withError:(NSError **)errorPtr
{
   if(id == 1)
   {
      return @"Employee Test Name";
   }
   else
   {
      NSString *domain = @"com.MyCompany.MyApplication.ErrorDomain";
      NSString *desc =@"Unable to complete the process";
      NSDictionary *userInfo = [[NSDictionary alloc]
      initWithObjectsAndKeys:desc,@"NSLocalizedDescriptionKey",NULL];
       
      *errorPtr = [NSError errorWithDomain:domain code:-101
      userInfo:userInfo];
      return @"";
   }
}
@end
