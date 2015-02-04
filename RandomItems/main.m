//
//  main.m
//  RandomItems
//
//  Created by jsanto on 1/29/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import <Foundation/Foundation.h>
        // needed to see variables.
#import "JJSItem.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Creating and array and populating it.
        NSMutableArray *items = [[NSMutableArray alloc] init];
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items insertObject:@"Zero"atIndex:0];
        
       //For every item in the array pointed to by items
        for (NSString *item in items){
            NSLog(@"%@", item);
        }
    
        JJSItem *item = [[JJSItem alloc] init];
        
        // [item setItemName:@"Red Sofa"]; OR USE  SETTERS  are instance methods
            item.ItemName = @"Red Sofa";
        
        //[item setSerialNumber:@"A1B2C"]; or use  SETTERS
            item.serialNumber= @"A1B2C3";
    
        //[item setValueInDollars:100]; Or use
        item.valueInDollars = 100;
        
        
        //NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);  or use
        //NSLog(@"%@ %@ %@ %d", item.itemName, item.dateCreated, item.serialNumber, item.valueInDollars);
        
        
        //utilizes the description method in jjsitem.m
        NSLog(@"%@", item);
        
        items = nil;
    }
    
    
    
    
}
