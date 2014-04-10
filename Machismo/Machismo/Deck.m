//
//  Deck.m
//  Machismo
//
//  Created by Bunty Makhija on 2/25/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards;
@end

@implementation Deck

-(NSMutableArray *)cards{
    if(!_cards){
        _cards=[[NSMutableArray alloc]init];
    }
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop{
    if(atTop){
        [self.cards insertObject:card atIndex:0];
    }else{
        [self.cards addObject:card];
    }
    
}

-(void)addCard:(Card *)card{
    [self addCard:card atTop:false];
}

-(Card *)drawRandomcard{
    Card *random=nil;
    if([self.cards count]){
    unsigned int index =arc4random() % [self.cards count];
    random=self.cards[index];
    [self.cards removeObjectAtIndex:index];
    }
    return random;
}

@end
