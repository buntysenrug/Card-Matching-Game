//
//  PlayingCardDeck.m
//  Machismo
//
//  Created by Bunty Makhija on 2/25/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(instancetype)init{
    
    self=[super init];
    if(self){
        for(NSString *suit in [PlayingCard validsuits]){
            for(NSUInteger rank=1;rank<=[PlayingCard maxRank]; rank++){
                PlayingCard *card=[[PlayingCard alloc]init];
                card.rank=rank;
                card.suit=suit;
                [self addCard:card];
            }
            
        }
    }
    
    
    
    
    return self;
}

@end
