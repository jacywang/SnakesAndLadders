//
//  Board.h
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/10/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Square;

@interface Board : NSObject

@property (nonatomic, strong) NSMutableArray *board;
@property (nonatomic, strong) Square *square;

-(instancetype)initWithGridSize:(int)size;

@end
