//
//  JJSItem.m
//  RandomItems
//
//  Created by jsanto on 2/3/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

    // the header file is always imported on the top of an implementation file.
#import "JJSItem.h"

    //implementation statement and the class name.  All methods defined in the implementation file are inside this implementation block.

@implementation JJSItem

-(instancetype)initWithItemName:(NSString *)name
                 valueInDollars:(int)value
                   serialNumber:(NSString *)sNumber
{
    //call the superclass's designated initializer
    self = [super init];
    
    //Did the superclass's designated initializer succedd?
    if (self){
        //give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        //Set _dateCreated to the current date and time
        _dateCreated = [[NSDate alloc] init];
           }
                         return self;
}




-(NSString *) description
{
        NSString *descriptionString =
            [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
                            self.itemName,
             self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
}


- (void)setItemName:(NSString *)str
    {
        _itemName = str;
    }
- (NSString *)itemName
    {
        return _itemName;
    }
- (void)setSerialNumber:(NSString *)str
   {
       _serialNumber = str;
   }
- (NSString *)serialNumber
    {
        return _serialNumber;
    }
- (void)setValueInDollars:(int)v
    {
        _valueInDollars = v;
    }
- (int)valueInDollars
    {
        return _valueInDollars;
    }
- (NSDate *)dateCreated
    {
        return _dateCreated;
    }
@end
            
