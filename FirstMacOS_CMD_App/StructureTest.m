//
//  StructureTest.m
//  FirstMacOS_CMD_App
//
//  Created by Vibas on 24/04/23.
//

#import <Foundation/Foundation.h>
#import "MyClasses.h"

@implementation StructureTest

struct Book
{
    int ID;
    NSString *Name;
};

-(void) TestStruct
{
    struct Book book1, book2;
    book1.ID = 1;
    book1.Name = @"LET US C";
    
    book2.ID = 2;
    book2.Name = @"DATA STRUCTURE";
    
    NSLog(@"Print book info by Pass Structure to function");
    [self PrintBookInfo:book1];
    [self PrintBookInfo:book2];
    
    //Pointer to struct book
    struct Book *book_ptr;
    // Assign address of book 1 to book_ptr
    book_ptr = &book1;
    NSLog(@"Print book info by Pass Pointer to struct to function");
    [self PrintBookInfoWithPointerToBook:book_ptr];
    book_ptr = &book2;
    [self PrintBookInfoWithPointerToBook:book_ptr];
    
}

// Pass struct to a function (Value type)
-(void) PrintBookInfo : (struct Book) book
{
    NSLog(@"Book ID : %d | Name %@ | size of book %lu",book.ID , book.Name, sizeof(book));
}

// Pass pointer to struct to a function (Reference type)
-(void) PrintBookInfoWithPointerToBook : (struct Book *) book_ptr
{
    NSLog(@"Book ID : %d | Name %@ | Address = %x",book_ptr->ID , book_ptr->Name, book_ptr);
}

@end
