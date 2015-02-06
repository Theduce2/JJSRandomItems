//
//  JJSContainer.m
//  RandomItems
//
//  Created by jsanto on 2/5/15.
//  Copyright (c) 2015 Jason Santo. All rights reserved.
//

#import "JJSContainer.h"

@implementation JJSContainer


-(instancetype)init

{
    self =[super init];
    if (self)
    {
        _containerName = @"";
        _subitems =[[NSMutableArray alloc] init];
    }
    return self;
}


-(void)setContainerName:(NSString *)str
{
    _containerName = str;
}

- (NSString *)containerName
{
    return _containerName;
}

- (NSArray *)items
{
    return [[NSArray alloc] initWithArray:_subitems];
}

-(void)addItem:(JJSItem *)item
{
    [_subitems addObject:item];
}

- (JJSItem *)itemAtIndex:(int)index
{
    return _subitems[index];
}

-(int)valueInDollars
{
    int total =0;
    for (JJSItem *item in self.items)
    {
        total += item.valueInDollars;
    }
    return total;
}

-(NSString *)description
{
    NSString *descriptionString =[[NSString alloc] initWithFormat:@"%@ Total value: %d, items: %@", self.containerName, self.valueInDollars, self.items];

                                  return descriptionString;
                                  }

@end
