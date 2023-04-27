//
//  OOPS.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 26/04/23.
//

#import <Foundation/Foundation.h>
#import "Lession.h"
#import "OOPS_ClassObject.h"
#import "OOPS_Inheritance.h"
#import "OOPS_Polymorphism.h"
#import "Student.h"
#import "OOPS_Category.h"
#import "OOPS_Extension.h"
#import "OOPS_Protocol.h"

@implementation OOPS

-(void) TestClassAndObject
{
    Box *box1 = [[Box alloc] init:5 breadth:5];
    box1.Height = 6;
    float volume = [box1 Volume];
    NSLog(@"Volume of box1 = %f", volume);
}

-(void) TestInheritance
{
    // Base class
    Bird *bird = [[Bird alloc]init:@"Bird"];
    [bird PrintBirdInfo];
    
    // Derived class - Crow
    Crow *crow = [[Crow alloc]init:@"Crow" movementType:@"Fly"];
    [crow PrintBirdInfo];
    
    // Derived class - Duck
    Duck *duck = [[Duck alloc]init:@"Duck" movementType:@"Swim"];
    [duck PrintBirdInfo];
}

-(void) TestPolymorphism
{
    Shape *shape;
    
    shape = [[Square alloc]initWithSide:5];
    [shape CalculateArea];
    [shape PrintArea];
    
    shape = [[Rectangle alloc]initWithLength:5 andBreadth:6];
    [shape CalculateArea];
    [shape PrintArea];
}

-(void) TestDataEncapsulation
{
    Student *student = [[Student alloc] init:@"Vibas"];
    NSLog(@"Access student's name by using GetStudentName() : %@",[student GetStudentName]);
}

-(void) TestCategory
{
    NSString *copyrightString = [NSString getCopyRightString];
    NSLog(@"Accessing Category: %@",copyrightString);
    
    NSString *randomString = [NSString getRandomStringWithLength:10];
    NSLog(@"randomString = %@",randomString);
}

-(void) TestExtension
{
    ExtensionSampleClass *extension_sample = [[ExtensionSampleClass alloc]init];
    [extension_sample setInternalID];
    NSLog(@"Sample Class Name : %@ External ID : %@", [extension_sample getName], [extension_sample getExternalID]);
}

-(void) TestProtocol
{
    PrintProtocolSample *protocol_sample = [PrintProtocolSample alloc];
    [protocol_sample startAction];
}

-(void) Learn
{
    [super Learn];
    NSLog(@"================ OBJECT ORIENTED PROGRAMMING ===============");
    
    // Lession 1 - Class & Object
//    [self TestClassAndObject];
    
    // Lession 2 - Inheritance
//    [self TestInheritance];
    
    // Lession 3 - Polymorphism
//    [self TestPolymorphism];
    
    // Lession 4 - Data Encapsulation
//    [self TestDataEncapsulation];
    
    // Lession 5 - Category
//    [self TestCategory];
    
    // Lession 6 - Extension
//    [self TestExtension];
    
    // Lession 7 - Protocol
//    [self TestProtocol];
}

@end
