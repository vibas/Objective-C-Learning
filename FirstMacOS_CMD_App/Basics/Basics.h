//
//  Basics.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 26/04/23.
//

#ifndef Basics_h
#define Basics_h

#pragma mark - CALCULATOR
@interface Calculator : NSObject
-(int) Add:(int)num1 secondNum:(int)num2;
-(int) Subtract : (int) num1 secondNum : (int) num2;
-(int) Multiply : (int) num1 secondNum : (int) num2;
-(int) Divide : (int) num1 secondNum : (int) num2;
-(void) Test;
@end

#pragma mark - LOOP TEST
@interface LoopTest : NSObject
-(void) ForLoop;
-(void) WhileLoop;
-(void) DoWhileLoop;
-(void) NestedLoop;
@end

#pragma mark - BLOCK TEST
typedef void (^CompletionBlock)(int);
@interface BlockTest : NSObject
-(void) FuncionCallWithBlockParam : (CompletionBlock)completionBlock;
@end

#pragma mark - NS NUMBER
@interface NSNumberTest : NSObject
- (NSNumber *)multiply:(NSNumber *)a b:(NSNumber *)b;
@end

#pragma mark - ARRAY TEST
@interface ArrayTest : NSObject
-(void) OneDimensionalArray;
-(void) MultiDimensionalArray;
@end

#pragma mark - POINTER TEST
@interface PointerTest : NSObject
-(void) TestVariableAddress;
-(void) TestPointerUse;
-(void) TestPointerArithmaticOp;
-(void) TestPointerComparision;
-(void) TestArrayOfPoiners;
-(void) TestPointerToPointer;
-(void) TestPassingPointerToFunction;
@end

#pragma mark - STRINGS
@interface StringTest : NSObject
-(void) TestString;
@end

#pragma mark - STRUCTURE
@interface StructureTest : NSObject
-(void) TestStruct;
@end

#pragma mark - NS ERROR
@interface NSErrorTest:NSObject
-(NSString *) getEmployeeNameForID:(int) id withError:(NSError **)errorPtr;
@end

#endif /* Basics_h */
