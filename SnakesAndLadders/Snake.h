//
//  Snake.h
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnakeAndLadderCreation.h"

@interface Snake : NSObject <SnakeAndLadderCreation>

@property (nonatomic, assign) int steps;

@end
