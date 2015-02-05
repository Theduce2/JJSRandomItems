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
        
        for (int i=0; i < 10; i++) {
            JJSItem  *item = [JJSItem randomItem];
            [items addObject:item];
        }
        
        for (JJSItem *item in items){
            NSLog(@"%@",item);
        }
        
       items = nil;
    }
    
    
    return 0;
}
