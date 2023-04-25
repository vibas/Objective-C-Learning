//
//  OOPS_Inheritance.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 25/04/23.
//

#ifndef OOPS_Inheritance_h
#define OOPS_Inheritance_h
@interface Bird : NSObject
{
    NSString *name;
    NSString *movementType;
}
-(id) init:(NSString*) _name;
-(void) PrintBirdInfo;
@end

@interface Crow : Bird
-(id) init : (NSString *) _name movementType : (NSString*) _movementType;
@end

@interface Duck : Bird
-(id) init : (NSString *) _name movementType : (NSString*) _movementType;
@end

#endif /* OOPS_Inheritance_h */
