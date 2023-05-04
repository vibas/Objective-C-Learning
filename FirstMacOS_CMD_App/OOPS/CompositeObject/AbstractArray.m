//
//  AbstractArray.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 02/05/23.
//

#import <Foundation/Foundation.h>
#import "CompositeObj.h"

@implementation MyArray

- (void)Print
{
}
-(void) Clear
{
}

@end

@implementation IntArray

-(id) init : (int*) array_elements withSize:(int)size
{
    self = [super init];
    int_array = array_elements;
    _size = size;
    return self;
}

- (void)Print
{
    [super Print];
    for(int i = 0; i<_size; i++)
    {
        NSLog(@"%d",int_array[i]);
    }
}

-(void) Clear
{
    int_array = nil;
}

@end

@implementation CharArray

-(id) init : (char*) array_elements withSize:(int)size
{
    self = [super init];
    char_array = array_elements;
    _size = size;
    return self;
}

- (void)Print
{
    [super Print];
    for(int i = 0; i<_size; i++)
    {
        NSLog(@"%c",char_array[i]);
    }
}

-(void) Clear
{
    char_array = nil;
}

@end
