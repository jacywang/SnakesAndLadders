//
//  Square.h
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SnakeAndLadderCreation.h"

@interface Square : NSObject

@property (nonatomic, strong) id<SnakeAndLadderCreation> delegate;

@end
