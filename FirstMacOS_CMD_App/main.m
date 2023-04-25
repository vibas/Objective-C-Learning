//
//  main.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 03/03/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"
#include "Test.h"

// define
#define APP_NAME "Learn Obj-C"
#define VERSION 1.0

#ifndef MESSAGE
   #define MESSAGE "You wish!"
#endif

// Go to project -> build settings -> preprocessor macro -> and set the value for RELEASE
#if RELEASE
#define SERVER_PATH "https//server-path.com"
#else
#define SERVER_PATH "http//localhost"
#endif

// Macro
#define Add2Numbers(a,b) a+b
#define Square(a) a*a
#define  message_for(a, b)  \
   NSLog(@#a " and " #b ": We love you!\n")

#define MaxOf2(a,b) \
(a>b)? a : b

// Go to project -> build settings -> preprocessor macro -> and set the value for DEBUG
#if DEBUG == 0
#define DebugLog(...)
#elif DEBUG == 1
#define DebugLog(...) NSLog(__VA_ARGS__)
#endif

// Typedef
typedef int NumberArray[];
typedef char *StringArray[];

#pragma mark - Method Declaration
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
void TestStruct(void);
void TestPreprocessor(void);
void TestTypedef(void);
void TestConfigurableLogger(void);
void TestNSError(void);

#pragma mark - Main Function
int main(int argc, const char * argv[])
{
    // Test command line arguments. Select Scheme -> Arguments -> set/change arguments
    NSLog(@"App Name : %s | App Version : %s \n ================= ", argv[1], argv[2]);
    
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
//        TestStrings();
        
        // Lession 10 - Structures
//        TestStruct();
        
        // Lession 11 - Preprocessor
//        TestPreprocessor();
        
        // Lession 12 - Typedef
//        TestTypedef();
        
        // Lession 13 - Logger Configuration
//        TestConfigurableLogger();
        
        // Lession 14 - NSError
//        TestNSError();
        
    }
    return 0;
}

#pragma mark - Method Definition
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

void TestStruct()
{
    StructureTest *struct_test = [StructureTest alloc];
    [struct_test TestStruct];
}

void TestPreprocessor()
{
    NSLog(@"App Name = %s Version = %f Server Path = %s", APP_NAME, VERSION, SERVER_PATH);
    
#if DEBUG
    NSLog(@"Debug is on. Message : %s",MESSAGE);
    NSLog(@"Date %s", __DATE__);
    NSLog(@"Time %s", __TIME__);
    NSLog(@"File %s",__FILE__);
    NSLog(@"Line %d", __LINE__);
    NSLog(@"Stdc %d", __STDC__);
#endif
    
    NSLog(@"Macro test : Add2Numbers(a,b) = %d", Add2Numbers(5,6));
    NSLog(@"Macro test : Square(a) = %d", Square(5));
    message_for(vibas, behera);
    NSLog(@"Macro test : MaxOf2(a,b) = %d", MaxOf2(5, 6));
}

void TestTypedef()
{
    NumberArray numbers = {1,2,3};
    StringArray strings = {"Hello", "World","!"};
    
    for(int i=0;i<3;i++)
    {
        NSLog(@"%d",numbers[i]);
        NSLog(@"%s",strings[i]);
    }
}

void TestConfigurableLogger()
{
    DebugLog(@"Debug log, our custom addition gets printed during debug only");
    NSLog(@"NSLog gets printed always" );
}

void TestNSError()
{
    NSErrorTest *sampleClass = [[NSErrorTest alloc]init];
    NSError *error = nil;
    NSString *name1 = [sampleClass getEmployeeNameForID:1 withError:&error];
      
    if(error)
    {
        NSLog(@"Error finding Name1: %@",error);
    }
    else
    {
        NSLog(@"Name1: %@",name1);
    }
       
    error = nil;
    NSString *name2 = [sampleClass getEmployeeNameForID:2 withError:&error];

    if(error)
    {
        NSLog(@"Error finding Name2: %@",error);
    }
    else
    {
        NSLog(@"Name2: %@",name2);
    }
}
