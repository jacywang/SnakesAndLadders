//
//  Board.h
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Square;
@class Player;

@interface Board : NSObject

@property (nonatomic, strong) NSMutableArray *boardArray;
@property (nonatomic, strong) Square *square;
@property (nonatomic, assign) BOOL gameOver;

-(int)getGridSize;
-(int)getDiceNumber;
-(void)movePlayer:(Player *)player withDiceNumber:(int)diceNumber;

@end
