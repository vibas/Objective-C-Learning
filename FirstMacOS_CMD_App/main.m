//
//  main.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 03/03/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"
#import "Test.h"

void HelloWorld(void);
void VariableTest(void);
void CalculatorFunctionTest(void);
void TestLoop(void);

void TestBlock(void);
double (^multiplyTwoValues)(double, double) = ^(double firstValue, double secondValue)
{
    return firstValue * secondValue;
};

void TestNSNumbers(void);
void TestArray(void);
void TestPointer(void);
void TestCCall(void);
void TestStrings(void);

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //Lession 1 - Print Hello World
//        HelloWorld();
        
        // Lession 2 - Variable and Datatypes
//        VariableTest();
        
        // Lession 3 - Functions
//        CalculatorFunctionTest();
        
        // Lession 4 - Loops
//        TestLoop();
        
        // Lession 5 - Blocks
//        TestBlock();
        
        // Lession 6 - Numbers
//        TestNSNumbers();
        
        // Lession 7 - Array
//        TestArray();
        
        // Lession 8 - Poiners
//        TestPointer();
        
        // Call C Function
//        TestCCall();
        
        // Lession 9 - Strings
        TestStrings();
    }
    return 0;
}


void HelloWorld()
{
    NSString *s = @"Hello world!";
    NSLog(@"%@", s);
}

void VariableTest()
{
    // VARIABLE
    {
        int i = 5;
        float f = 5.5f;
        char c = 'V';
        double d = 500000.5;
        Byte b = 20;
        char *cc = "Hello World";
        NSString *s = @"NSString Hello World";
        
        NSLog(@"int %d",i);
        NSLog(@"float %f",f);
        NSLog(@"char %c",c);
        NSLog(@"double %f", d);
        NSLog(@"byte %d",b);
        NSLog(@"string %s",cc);
        NSLog(@"%@" , s);
    }
}

void CalculatorFunctionTest()
{
    // CALCULATOR
    {
        Calculator *calc = [[Calculator alloc] init];
        [calc Test];
    }
}

void TestLoop()
{
    // LOOP TEST
    {
        LoopTest *loopTest = [[LoopTest alloc]init];
        [loopTest ForLoop];
        [loopTest WhileLoop];
        [loopTest DoWhileLoop];
        [loopTest NestedLoop];
    }
}

void TestBlock()
{
    // Direct call to a block as a method call
    double result = multiplyTwoValues(2,4);
    NSLog(@"Multiplication result = %f", result);
    
    // Pass a block to another method as parameter and execute it inside the called method
    BlockTest *block = [[BlockTest alloc] init];
    [block FuncionCallWithBlockParam:^(int i){
        NSLog(@"Block called after the function call. Block ID - %d " , i);
    }];
}

void TestNSNumbers()
{
    NSNumberTest *nsNumTest = [[NSNumberTest alloc]init];
    
    // Use of NSNumber to store bool value
    NSNumber *num_bool = [NSNumber alloc];
    num_bool = [num_bool initWithBool:false];
    NSLog(@"NSNumber as bool %s ",[num_bool boolValue]?"true":"false");
    
    NSNumber *num1 = [NSNumber numberWithFloat:10.5];
    NSNumber *num2 = [NSNumber numberWithFloat:2];
    NSNumber *result = [nsNumTest multiply:num1 b:num2];
    NSLog(@"NSNumber Test Multiplication Resilt : %f", [result floatValue]);
}

void TestArray()
{
    ArrayTest *arrayTest = [ArrayTest alloc];
    [arrayTest OneDimensionalArray];
    [arrayTest MultiDimensionalArray];
}

void TestPointer()
{
    PointerTest *pointerTest = [PointerTest alloc];
//    [pointerTest TestVariableAddress];
//    [pointerTest TestPointerUse];
//    [pointerTest TestPointerArithmaticOp];
//    [pointerTest TestPointerComparision];
//    [pointerTest TestArrayOfPoiners];
//    [pointerTest TestPointerToPointer];
//    [pointerTest TestPassingPointerToFunction];
}

void TestCCall()
{
    int sum =  AddTwoNumbers(10, 20);
    NSLog(@"OBJECTIVE-C PRINT SUM = %d",sum);
}

void TestStrings()
{
    StringTest *str_test = [StringTest alloc];
    [str_test TestString];
}
