//
//  main.m
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

// Following features need to be added,
// 1. Add another player
// 2. Implement game difficulty E-easy, M-medium, H-hard

#import <Foundation/Foundation.h>
#import "Board.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Board *board = [[Board alloc] init];
        
        Player *player1 = [[Player alloc] init];
        Player *player2 = [[Player alloc] init];
        
        while (!board.gameOver) {
            int player1DiceNumber = [player1 getDiceNumber];
            [board movePlayer:player1 withDiceNumber:player1DiceNumber];
            if (board.gameOver) continue;
            int player2DiceNumber = [player2 getDiceNumber];
            [board movePlayer:player2 withDiceNumber:player2DiceNumber];
        }
        
        
        
        
    }
    return 0;
}
