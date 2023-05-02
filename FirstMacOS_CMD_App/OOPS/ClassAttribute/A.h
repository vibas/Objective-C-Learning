//
//  A.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 02/05/23.
//

@class B;

#ifndef A_h
#define A_h

@interface A : NSObject
{
    char a;
}
-(id) init;
-(B *) CalculateMyBness;
-(char) GetMyChar;
@end

#endif /* A_h */
