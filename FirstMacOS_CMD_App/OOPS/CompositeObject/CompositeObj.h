//
//  CompositeObj.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 02/05/23.
//

#ifndef CompositeObj_h
#define CompositeObj_h

@protocol AbstractArray
@required
-(void)Print;
-(void)Clear;
@end

@interface MyArray : NSObject<AbstractArray>

@end

@interface IntArray : MyArray
{
    int *int_array;
    int _size;
}
-(id)init : (int*) array_elements withSize:(int) size;
@end


@interface CharArray : MyArray
{
    char *char_array;
    int _size;
}
-(id)init : (char*) array_elements withSize:(int)size;
@end

#endif /* CompositeObj_h */
