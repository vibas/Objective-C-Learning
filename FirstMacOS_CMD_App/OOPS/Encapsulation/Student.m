//
//  Student.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 26/04/23.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@implementation Student

-(id) init:(NSString *)_name
{
    self = [super init];
    name = _name;
    return self;
}

-(NSString*)GetStudentName
{
    return name;
}

@end
