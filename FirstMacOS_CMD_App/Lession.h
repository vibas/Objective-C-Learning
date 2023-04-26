//
//  Lession.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 26/04/23.
//

#ifndef Lession_h
#define Lession_h

@interface Lession : NSObject
-(void) Learn;
@end

#pragma mark - BASIC
@interface Basic : Lession
-(void) HelloWorld;
-(void) VariableTest;
-(void) CalculatorFunctionTest;
-(void) TestLoop;
-(void) TestBlock;
-(void) TestNSNumbers;
-(void) TestArray;
-(void) TestPointer;
-(void) TestCCall;
-(void) TestStrings;
-(void) TestStruct;
-(void) TestPreprocessor;
-(void) TestTypedef;
-(void) TestConfigurableLogger;
-(void) TestNSError;
-(void) Learn;
@end

#pragma mark - OOPS
@interface OOPS : Lession
-(void) TestClassAndObject;
-(void) TestInheritance;
-(void) Learn;
@end

#endif /* Lession_h */
