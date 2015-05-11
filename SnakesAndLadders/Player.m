//
//  Player.m
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Player.h"

@implementation Player

-(int)getDiceNumber {
    NSLog(@"Input your dice number:");
    char str[100];
    fgets(str, 100, stdin);
    NSString *input = [NSString stringWithUTF8String:str];
    int diceNumber = (int)[input integerValue];
    NSLog(@"Dice number is %d", diceNumber);
    return diceNumber;
}

@end
