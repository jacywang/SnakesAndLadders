//
//  Board.m
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Board.h"
#import "Square.h"
#import "Snake.h"
#import "Ladder.h"

@implementation Board

-(instancetype)initWithGridSize:(int)size {
    self = [super self];
    
    if (self) {
        _board = [NSMutableArray array];
        
        int totalSquares = size * size;
        
        int snakeSquareNumber = arc4random_uniform(totalSquares - 1) + 1;
        int ladderSquareNumber = arc4random_uniform(totalSquares - 1) + 1;
        while (ladderSquareNumber == snakeSquareNumber) {
            ladderSquareNumber = arc4random_uniform(totalSquares - 1) + 1;
        }
        
        for (int i = 0; i < totalSquares; i++) {
            _square = [[Square alloc] init];
            
            if (i == snakeSquareNumber) {
                _square.delegate = [[Snake alloc] initWithSquareNumber:snakeSquareNumber];
            } else if (i == ladderSquareNumber) {
                _square.delegate = [[Ladder alloc] initWithSquareNumber:ladderSquareNumber];
            }
            
            [_board addObject:_square];
        }
    }
    
    return self;
}


@end
