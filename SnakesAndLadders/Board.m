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
#import "Player.h"

@implementation Board

-(instancetype)init {
    self = [super self];
    
    if (self) {
        _boardArray = [NSMutableArray array];
        _gameOver = NO;
        
        int size = [self getGridSize];
        int totalSquares = size * size;
        
        NSLog(@"Welcome to the game! You are in a %d *%d grid.", size, size);
        
        int snakeSquareNumber = arc4random_uniform(totalSquares - 1) + 1;
        int ladderSquareNumber = arc4random_uniform(totalSquares - 2) + 1;
        while (ladderSquareNumber == snakeSquareNumber) {
            ladderSquareNumber = arc4random_uniform(totalSquares - 2) + 1;
        }
        
        NSLog(@"snake number: %d", snakeSquareNumber);
        NSLog(@"ladder number: %d", ladderSquareNumber);
        
        for (int i = 0; i < totalSquares; i++) {
            _square = [[Square alloc] init];
            
            if (i == snakeSquareNumber) {
                _square.delegate = [[Snake alloc] initWithSquareNumber:snakeSquareNumber];
            } else if (i == ladderSquareNumber) {
                _square.delegate = [[Ladder alloc] initWithSquareNumber:(totalSquares - ladderSquareNumber - 1)];
            }
            
            [_boardArray addObject:_square];
        }
    }
    
    return self;
}

-(int)getGridSize {
    NSLog(@"Input the grid size:");
    char str[100];
    fgets(str, 100, stdin);
    NSString *input = [NSString stringWithUTF8String:str];
    int size = (int)[input integerValue];
    return size;
}

-(int)getDiceNumber {
    NSLog(@"Input your dice number:");
    char str[100];
    fgets(str, 100, stdin);
    NSString *input = [NSString stringWithUTF8String:str];
    int diceNumber = (int)[input integerValue];
    NSLog(@"Dice number is %d", diceNumber);
    return diceNumber;
}

-(void)movePlayer:(Player *)player withDiceNumber:(int)diceNumber {
    NSUInteger currentIndex;
    int totalSquares = (int)[_boardArray count];
    
    if (player.square == nil) {
        player.square = self.boardArray[diceNumber - 1];
    } else {
        currentIndex = [self.boardArray indexOfObject:player.square];
        if (currentIndex + diceNumber > totalSquares) {
            self.gameOver = YES;
        } else {
            player.square = self.boardArray[currentIndex + diceNumber];
        }
        
    }
    
    if (player.square.delegate != nil) {
        currentIndex = [self.boardArray indexOfObject:player.square];
        int steps = [player.square.delegate steps];
        if (steps > 0) {
            NSLog(@"You have a ladder that will move you %d steps forward.", steps);
        } else if (steps < 0) {
            NSLog(@"You meet the snake that will move you %d steps backward.", steps);
        }
        
        if (currentIndex + steps > totalSquares) {
            self.gameOver = YES;
        } else {
            player.square = self.boardArray[currentIndex + steps];
        }
    }
    
    if (!self.gameOver) {
        currentIndex = [self.boardArray indexOfObject:player.square];
        NSLog(@"Now you are in square %lu.", currentIndex + 1);
    }
}

@end
