//
//  Ladder.m
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "Ladder.h"

@implementation Ladder

-(instancetype)initWithGridSize:(int)size {
    self = [super self];
    
    if (self) {
        _steps = arc4random_uniform(size * size - 1) + 1;
    }
    
    return self;
}

@end
