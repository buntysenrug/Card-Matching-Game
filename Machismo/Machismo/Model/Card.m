//
//  Card.m
//  Machismo
//
//  Created by Bunty Makhija on 2/25/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "Card.h"
@interface Card()

@end


@implementation Card

-(int)match:(NSArray *)othercards{
    int score=0;
    
    for(Card *card in othercards){
    if([card.contents isEqualToString:self.contents]){
        score=1;
        }
    }
    return score;
}





@end
