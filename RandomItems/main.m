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
#import "JJSContainer.h"

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
        
        JJSContainer *container = [[JJSContainer alloc] init];
       
        [container setContainerName:@"Jay's Container"];
        [container addItem:[JJSItem randomItem]];
         [container addItem:[JJSItem randomItem]];
          
          JJSContainer *superContainer = [[JJSContainer alloc] init];
          [superContainer setContainerName:@"Jays Super Container"];
          [superContainer addItem:container];
          [superContainer addItem:[JJSItem randomItem]];
          
          JJSContainer *superSuperContainer = [[JJSContainer alloc] init];
          [superSuperContainer setContainerName:@"Jay's Super Super Containter"];
          [superSuperContainer addItem:superContainer];
          
          NSLog(@"Jay's Container:%@", container);
          NSLog(@"Jay's Super Container:%@", superContainer);
          NSLog(@"Jay's Super Super Container:%@",superSuperContainer);
          
        items = nil;
    }
    
    
    return 0;
}
