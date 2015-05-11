//
//  Board.m
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Board.h"
#import "Square.h"

@implementation Board

-(instancetype)initWithGridSize:(int)size {
    self = [super self];
    
    if (self) {
        _board = [NSMutableArray array];
        for (int i = 0; i < size * size; i++) {
            _square = [[Square alloc] init];
            [_board addObject:_square];
        }
    }
    
    return self;
}


@end
