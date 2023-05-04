//
//  ArrayTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 18/04/23.
//

#import <Foundation/Foundation.h>
#import "Basics.h"

@implementation ArrayTest

-(void) OneDimensionalArray
{
    
    // Float Array
    float floatArray[] = {0,1,2,3,4};
    for(int i=0;i<5;i++)
    {
        NSLog(@"%f",floatArray[i]);
    }
    
    // NSNumber Array
    NSNumber *ns_numArray[5] = {@1,@2,@3,@4,@5};
    for(int i = 0; i<5;i++)
    {
        NSLog(@"%d",ns_numArray[i].intValue);
    }
    
    // Character Array
    char *ch = "Hello World";
    unsigned long ch_length = strlen(ch);
    for(int j = 0; j<ch_length; j++)
    {
        NSLog(@"%c", ch[j]);
    }
    
    char char_Array[] = {"TestArray"};
    unsigned long ch_Array_Length = strlen(char_Array);
    for(int i = 0; i<ch_Array_Length; i++)
    {
        NSLog(@"%c",char_Array[i]);
    }
    
    // NSArray of NSString
    NSString *object1 = @"Hello";
    NSString *object2 = @"world!";
    NSString *object3 = @"Good-bye";
    NSArray *myArray;
    myArray= [NSArray arrayWithObjects: object1, object2, object3, nil];
    for (NSString *randomVariable in myArray)
    {
        NSLog (@"Array element = %@", randomVariable);
    }
    
    // Array of NSString
    NSString *ns_stringArray[] = {object1, object2, object3 };
    for(int i=0;i<3;i++)
    {
        NSLog (@"Array element = %@", ns_stringArray[i]);
    }
    
    // Array of int
    int int_Array[10] = {0,1,2,3,4,5,6,7,8,9};
    [self PrintOneDimensionalIntArray:int_Array withSize:10];
    NSLog(@"Average of the array elements : %f ", [self GetAverageOfIntArray:int_Array withSize:10]);
    
    // Array in return type
    int* rand_int_Array = [self GetRandomIntArray];
    NSLog(@"RANDOM INT ARRAY ITEMS");
    [self PrintOneDimensionalIntArray:rand_int_Array withSize:10];
    
    // Pointer to an array
    [self PointerToAnArray];
}

-(void) MultiDimensionalArray
{
    // 2 Dimensional int array
    NSLog (@"Array elements in two dimensional array");
    int two_diemensionalArray[2][3] = {{0,1,2},{3,4,5}};
    [self PrintMultiDimensionalIntArray:two_diemensionalArray];
}

// Passing 1 dimensional array to a function
-(void) PrintOneDimensionalIntArray:(int []) arr withSize:(int) size
{
    NSLog(@"PrintOneDimensionalIntArray");
    for(int i=0;i<size;i++)
    {
        NSLog(@"%d " , arr[i]);
    }
}

// Passing 2 dimensional array to a function
-(void) PrintMultiDimensionalIntArray:(int [2][3])arr
{
    for(int i=0;i<2;i++)
    {
        NSLog(@"============");
        for(int j = 0; j<3;j++)
        {
            NSLog(@"%d " , arr[i][j]);
        }
    }
}

-(float) GetAverageOfIntArray:(int*)arr withSize:(int) size
{
    int sum = 0;
    for(int i = 0; i<size;i++)
    {
        sum+=arr[i];
    }
    
    NSLog(@"SUM : %d",sum);
    return (float) sum / size;
}

-(int*) GetRandomIntArray
{
    static int randArray[10];
    for(int i=0; i<10; i++)
    {
        randArray[i] = (arc4random()%100);
    }
    return  randArray;
}

-(void) PointerToAnArray
{
    /* an array with 5 elements */
    double balance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
    double *p;
    int i;
    
    // Assign array to pointer means p is pointing to the first element of the array
    p = balance;
     
    /* output each array element's value */
    NSLog( @"Array values using pointer\n");
    for ( i = 0; i < 5; i++ )
    {
        NSLog(@"*(p + %d) : %f\n",  i, *(p + i));
    }

    NSLog(@"Array values using balance as address\n");
    // *balance is also a pointer pointing to the first element of array balance
    for ( i = 0; i < 5; i++ )
    {
        NSLog(@"*(balance + %d) : %f\n",  i, *(balance + i) );
    }
}

@end
