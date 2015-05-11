//
//  main.m
//  SnakesAndLadders
//
//  Created by JIAN WANG on 5/9/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Board.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Board *board = [[Board alloc] initWithGridSize:4];
        
        NSLog(@"%@", board);
    }
    return 0;
}
