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
    
    NSLog(@"Array of pointers to character to store strings");
    char *names[] ={"Player1", "Player2", "Player3"};
    for(int i=0;i<3;i++)
    {
        NSLog(@"%s",names[i]);
    }
}

-(void) TestPointerToPointer
{
    NSLog(@"Test Pointer to pointer");
    
    int  var;
    int  *ptr;
    int  **pptr;

    var = 3000;

    /* take the address of var */
    ptr = &var;

    /* take the address of ptr using address of operator & */
    pptr = &ptr;

    /* take the value using pptr */
    NSLog(@"Value of var = %d\n", var );
    NSLog(@"Value available at *ptr = %d\n", *ptr );
    NSLog(@"Value available at **pptr = %d\n", **pptr);
}

-(void) TestPassingPointerToFunction
{
    int intVar = 100;
    int *ptr = &intVar;
    NSLog(@"BEFORE FUNC CALL : intVar = %d",intVar);
    NSLog(@"BEFORE FUNC CALL : *ptr = %d",*ptr);
    
    [self FunctionWithPointerParam:ptr];
    
    NSLog(@"AFTER FUNC CALL : intVar = %d",intVar);
    NSLog(@"AFTER FUNC CALL : *ptr = %d",*ptr);
    
    int arr[5] = {2,5,7,8,8};
    double average = [self GetAverage:arr ofSize:5];
    NSLog(@"Average of array elements = %f", average);
}

-(void) FunctionWithPointerParam : (int*) ptr
{
    *ptr = 500;
}

//The function, which can accept a pointer, can also accept an array
- (double) GetAverage:(int *)arr ofSize:(int) size
{
   int i, sum = 0;
   double avg;

   for (i = 0; i < size; ++i)
   {
      sum += arr[i];
   }

   avg = (double)sum / size;
   return avg;
}

@end
