//
//  PointerTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 19/04/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"

@implementation PointerTest

-(void) TestVariableAddress
{
    int i = 5;
    char c = 'V';
    NSLog(@"Var : i = %d, Address : %x",i , &i);
    NSLog(@"Var : c = %c, Address : %x",c , &c);
}

-(void) TestPointerUse
{
    int i = 5;
    int *ip;
    ip = &i;
    
    NSLog(@"value of i = %d",i);
    NSLog(@"Address of i = %x",&i);
    
    NSLog(@"Address stored in ip = %x",ip);
    NSLog(@"Value pointed by ip = %d",*ip);
    
    char c = 'V';
    char *np = NULL;
    NSLog(@"Address stored in np = %x",np);
    
    np = &c;
    NSLog(@"np is %s",np?"NOT NULL":"NULL");
}

-(void) TestPointerArithmaticOp
{
    int max = 4;
    int var[] = {10,50,100,150};
    int *ptr;
    
    // Assigning var array to the pointer - means it points to the first element's address
    ptr = var;
    
    // Increasing pointer which points to the address of next array element
    for(int i = 0; i< max; i++)
    {
        NSLog(@"var[%d] Address : %x Value : %d",i, ptr,*ptr);
        ptr++;
    }
    
    // Assigning array's last element's address to the pointers
    ptr = &var[max-1];
    // Decreasing pointer which points to the address of prev array element
    for(int i = 3;i>=0;i--)
    {
        NSLog(@"var[%d] Address : %x Value : %d",i, ptr,*ptr);
        ptr--;
    }
}

-(void) TestPointerComparision
{
    int max = 4;
    int var[] = {10,50,100,150};
    int *ptr;
    int i = 0;
    
    // Assigning array to the pointer means it will point to the first element's address
    ptr = var;
    
    // Using while loop iterate over an array using pointer
    while (ptr <= &var[max-1])
    {
        NSLog(@"var[%d] Address : %x Value : %d",i, ptr,*ptr);
        i++;
        ptr++;
    }
}

-(void) TestArrayOfPoiners
{
    int max = 3;
    int intArray[3] = {1,2,3};
    
    int *intPtrArray[max];
    
    for(int i=0;i<max;i++)
    {
        intPtrArray[i] = &intArray[i];
    }
    
    for(int i=0;i<max;i++)
    {
        NSLog(@"%x %d", intPtrArray[i], *intPtrArray[i]);
    }
    
    NSLog(@"Array of pointers to character");
    char *names[] ={"Player1", "Player2", "Player3"};
    for(int i=0;i<3;i++)
    {
        NSLog(@"%s",names[i]);
    }
}
@end
