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

-(void) Learn
{
    [super Learn];
    NSLog(@"================ OBJECT ORIENTED PROGRAMMING ===============");
    
    // Lession 1 - Class & Object
//    [self TestClassAndObject];
    
    // Lession 2 - Inheritance
//    [self TestInheritance];
}

@end
