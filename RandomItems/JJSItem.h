//
//  JJSItem.h
//  RandomItems
//
//  Created by jsanto on 2/3/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JJSItem : NSObject
{
    // every instance of JJSItem will have one spot for a simple integer and three spots
    // and for pointers to objects, two strings instances and one date instance.
    // the strings are pointers and do not live inside the JJS object, jjs object only knosw where the string lives in memory.  The int does live in JJSItem object
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

+(instancetype)randomItem;

    //setter method =set plus Cap name of instance variable.  The getter is just the name
-(void)setItemName:(NSString *)str;
-(NSString *)itemName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)v;
-(int)valueInDollars;

-(NSDate *)dateCreated;
+ (instancetype)RandomItem;
//Two additional initializers.  Each initlilzer begins with init.  The return type for these initilizers is instance type.  init methods are always declared to return instancetype
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

-(instancetype)initWithItemName:(NSString *)name;

//-(void)setItemName:(NSString *)str;

@end
