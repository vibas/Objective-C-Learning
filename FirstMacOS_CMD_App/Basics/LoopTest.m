//
//  LoopTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 10/03/23.
//

#import <Foundation/Foundation.h>
#import "Basics.h"

@implementation LoopTest

-(void) ForLoop
{
    for (int i = 0; i<5; i++)
    {
        NSLog(@"%d",i);
    }
}

-(void) WhileLoop
{
    int i = 0;
    while (i<10)
    {
        NSLog(@"%d",i);
        i++;
    }
}

-(void) DoWhileLoop
{
    int i = 0;
    do
    {
        NSLog(@"%d",i);
        i++;
    } while (i<10);
}

-(void) NestedLoop
{
    for (int i=1; i<=10; i++)
    {
        for (int j = 1; j<=10; j++)
        {
            NSLog(@"%d * %d = %d",i,j,i*j);
        }
    }
}

@end
