//
//  Calculator.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 10/03/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"

@implementation Calculator

-(int) Add:(int)num1 secondNum:(int)num2
{
    return  num1 + num2;
}

-(int) Subtract:(int)num1 secondNum:(int)num2
{
    return num1-num2;
}

-(int) Multiply:(int)num1 secondNum:(int)num2
{
    return num1 * num2;
}

-(int) Divide:(int)num1 secondNum:(int)num2
{
    return  num1 / num2;
}

-(void) Test
{
    int a = 10;
    int b = 2;
    
    int addition = [self Add:a secondNum:b];
    NSLog(@"%d + %d = %d" ,a, b, addition);
    
    int subtraction = [self Subtract:a secondNum:b];
    NSLog(@"%d - %d = %d" ,a, b, subtraction);
    
    int multiplication = [self Multiply:a secondNum:b];
    NSLog(@"%d * %d = %d" ,a, b, multiplication);
    
    int division = [self Divide:a secondNum:b];
    NSLog(@"%d / %d = %d" ,a, b, division);
}

@end
