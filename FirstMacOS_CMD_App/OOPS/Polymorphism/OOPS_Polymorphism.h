//
//  OOPS_Polymorphism.h
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 26/04/23.
//

#ifndef OOPS_Polymorphism_h
#define OOPS_Polymorphism_h

@interface Shape : NSObject
{
    float area;
}

-(void) CalculateArea;
-(void) PrintArea;

@end

@interface Square : Shape
{
    float length;
}
-(id) initWithSide : (float) side;
-(void) CalculateArea;
-(void) PrintArea;

@end

@interface Rectangle : Shape
{
    float length;
    float breadth;
}
-(id) initWithLength : (float) length andBreadth : (float) breadth;
-(void) CalculateArea;
-(void) PrintArea;

@end

#endif /* OOPS_Polymorphism_h */
