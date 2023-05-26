//
//  FOUNDATION_FRAMEWORK.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 05/05/23.
//

#import <Foundation/Foundation.h>
#import "Lession.h"

@implementation FOUNDATION_FRAMEWORK

-(void) TestDataStorage
{
//    [self TestNSArray];
    [self TestNSDict];
    
    
    
    // -------- mutable NSDictionary ----------
}

-(void) TestNSArray
{
    //---------------- immutable NSArray ----------------
    NSArray *nsArrayOfString = [[NSArray alloc]initWithObjects:@"String1",@"String2",@"String3",nil];
    unsigned long nsArrayOfStringCount = (unsigned long) nsArrayOfString.count;
    NSLog(@"count of nsArrayOfString = %lu",nsArrayOfStringCount);
    for(int i=0; i< nsArrayOfStringCount; i++)
    {
        NSLog(@"Object at index [%d] is %@", i, [nsArrayOfString objectAtIndex:i]);
    }
    
    //-----------------mutable NSArray ------------------
    NSMutableArray *nsMutableArrayOfString = [[NSMutableArray alloc]init];
    [nsMutableArrayOfString addObjectsFromArray:nsArrayOfString];
    [nsMutableArrayOfString addObject:@"String4"];
    [nsMutableArrayOfString addObject:@"String5"];
    NSLog(@"Added Objects");
    [self PrintNSMutalbeArrayCountAndElements:nsMutableArrayOfString];
    
    [nsMutableArrayOfString removeAllObjects];
    NSLog(@"Removed All Objects");
    [self PrintNSMutalbeArrayCountAndElements:nsMutableArrayOfString];
    
    [nsMutableArrayOfString addObject:@"Hello"];
    [nsMutableArrayOfString addObject:@"World"];
    [nsMutableArrayOfString addObject:@"!"];
    NSLog(@"Added Objects");
    [self PrintNSMutalbeArrayCountAndElements:nsMutableArrayOfString];
    
    [nsMutableArrayOfString removeObjectAtIndex:2];
    NSLog(@"Removed Object at index");
    [self PrintNSMutalbeArrayCountAndElements:nsMutableArrayOfString];
    
    [nsMutableArrayOfString exchangeObjectAtIndex:1 withObjectAtIndex:0];
    NSLog(@"Exchanged objects with index");
    [self PrintNSMutalbeArrayCountAndElements:nsMutableArrayOfString];
    
    [nsMutableArrayOfString replaceObjectAtIndex:0 withObject:@"Hello!"];
    NSLog(@"Replace objects at index with object");
    [self PrintNSMutalbeArrayCountAndElements:nsMutableArrayOfString];
    
    [nsMutableArrayOfString insertObject:@"World" atIndex:1];
    NSLog(@"Insert objects at index");
    [self PrintNSMutalbeArrayCountAndElements:nsMutableArrayOfString];
}

-(void) PrintNSMutalbeArrayCountAndElements :(NSMutableArray*) nsMutableArr
{
//    NSLog(@"%@",nsMutableArr);
    unsigned long nsMutableArrCount = (unsigned long) nsMutableArr.count;
    NSLog(@"Count of nsMutableArrayOfString = %lu", nsMutableArrCount);
    for(int i=0; i< nsMutableArrCount; i++)
    {
        NSLog(@"Object at index [%d] is %@", i, [nsMutableArr objectAtIndex:i]);
    }
}

-(void) TestNSDict
{
    // -------- immutable NSDictionary ----------
    NSDictionary *nsDict = [[NSDictionary alloc] initWithObjectsAndKeys:@100,@"Key1",@200,@"Key2", nil];
    NSLog(@"Dict Key Value Pairs %@",nsDict);
    NSLog(@"Dict all keys %@",[nsDict allKeys]);
    NSLog(@"Dict all values %@",[nsDict allValues]);
    NSLog(@"Dict value for key \"Key1""= %@",[nsDict valueForKey:@"Key1"]);
    
    // -------- mutable NSDictionary ----------
    NSMutableDictionary *nsMutDict = [[NSMutableDictionary alloc]init];
    [nsMutDict setValue:@500 forKey:@"Key1"];
    [nsMutDict setValue:@600 forKey:@"Key2"];
    NSLog(@"Mutable Dict Key Value Pairs %@",nsMutDict);
    
    
}

-(void) TestTextAndString
{
    
}
-(void) TestDatesAndTime
{
    
}
-(void) TestExceptionHandling
{
    
}
-(void) TestFileHandling
{
    
}
-(void) TestURLLoadingSystem
{
    
}

-(void) Learn
{
    [super Learn];
    NSLog(@"================ FOUNDATION FRAMEWORK ===============");
    
    // Learn about NSArray and NSDictionary
    [self TestDataStorage];
    
//    [self TestTextAndString];
//    [self TestDatesAndTime];
//    [self TestExceptionHandling];
//    [self TestFileHandling];
//    [self TestURLLoadingSystem];
}

@end
