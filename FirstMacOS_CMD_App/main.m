//
//  main.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 03/03/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"

void HelloWorld(void);
void VariableTest(void);
void CalculatorTest(void);
void TestLoop(void);

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        HelloWorld();
        VariableTest();
        CalculatorTest();
        TestLoop();
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
        
        NSLog(@"int %d",i);
        NSLog(@"float %f",f);
        NSLog(@"char %c",c);
        NSLog(@"double %f", d);
        NSLog(@"byte %d",b);
    }
}

void CalculatorTest()
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

