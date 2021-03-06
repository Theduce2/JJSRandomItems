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
                            self.serialNumber,
                            self.valueInDollars,
                            self.dateCreated];
    
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

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}
-(instancetype)init
{
    return [self initWithItemName:@"Item"];
}

+ (instancetype)randomItem
{
    //Creates and immutable array of three adjectives
    NSArray *randomAdjectiveList = @[@"Fluffy",@"Rusty",@"Shiny"];
    
    //Creates an Immutable Array of three nouns
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    
    //Get the index of a random adjective/noun from the lists note, The %operator, called the modulo operator, gives you the remainder.  So adjectiveIndex is a random number from 0 to 2 inclusive
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    //Note that NSInteger is not an object, but a type definition for long
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList [adjectiveIndex],
                             randomNounList[nounIndex]];
    
    int randomValue = arc4random() % 100;
    
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    JJSItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    
    return newItem;

}

@end
            
