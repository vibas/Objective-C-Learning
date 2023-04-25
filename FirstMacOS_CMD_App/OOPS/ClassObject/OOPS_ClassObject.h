//
//  OOPS_ClassObject.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 25/04/23.
//

#ifndef OOPS_ClassObject_h
#define OOPS_ClassObject_h

@interface Box : NSObject
{
    float length;   // Length of the Box
    float breadth;  // Breadth of the Box
}
@property (nonatomic,readwrite) float Height;   // Property
-(id) init:(float)_length breadth:(float)_breadth; // Init with parameter
-(float) Volume;     // Method declaration
@end

#endif /* OOPS_ClassObject_h */
