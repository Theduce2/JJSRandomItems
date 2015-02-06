//
//  JJSContainer.h
//  RandomItems
//
//  Created by jsanto on 2/5/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JJSItem.h"

@interface JJSContainer : JJSItem
{
    NSMutableArray *_subitems;
    NSString *_containerName;
}

-(void)setContaninerName:(NSString *)str;
-(NSString *)containerName;

-(NSArray *)items;

-(void)AddItem:(JJSItem *)item;
-(JJSItem *)itemAtIndex:(int)index;

-(int)valueInDollars;

@end
