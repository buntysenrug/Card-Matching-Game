//
//  CardMatchGame.m
//  Machismo
//
//  Created by Bunty Makhija on 5/8/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "CardMatchGame.h"
@interface CardMatchGame()
@property (nonatomic,readwrite) NSInteger score;
@property(nonatomic,readwrite)NSInteger no_of_matches;
@property(nonatomic,strong) NSMutableArray *cards; //No of cards in the Game


@end

@implementation CardMatchGame
-(NSMutableArray *)cards{
    if(!_cards) _cards=[[NSMutableArray alloc] init];
    return _cards;
}

-(instancetype)initCardCount:(NSUInteger)count usingDeck:(Deck *)deck{
    self=[super init];
    
    if(self){
        for(int i=0;i<count;i++){
            Card *card=[deck drawRandomcard];
            if(card){
                [self.cards addObject:card];
            }else{
                self=nil;
                break;
            }
        }
    }
    return self;
}

-(instancetype)init{
    return  nil;
}

static const int PENALTY=1;
static const int BONUS=4;
static const int COST_OF_MISS=1;

-(Card *)cardAtIndex:(NSUInteger)index{
    return (index <[self.cards count ]) ? self.cards[index]:nil;
    
}
-(void)chooseCardAtIndex:(NSUInteger)index{
    Card * card=[self cardAtIndex:index];
    
    if(!card.isMatched){
        if(card.isChosen){
            card.chosen=NO;
        }else{
            //match
            for(Card *otherCard in self.cards){
                if(otherCard.isChosen && !otherCard.isMatched){
                    int matchScore=[card match: @[otherCard]];
                    if(matchScore){
                        self.score+=matchScore*BONUS;
                        card.matched=YES;
                        otherCard.matched=YES;
                        self.no_of_matches+=1;
                    }else{
                        self.score-=PENALTY;
                        otherCard.chosen=NO;
                    }
                    break;
                }
                
            }
            self.score-=COST_OF_MISS;
            card.chosen=YES;
        }
    }
}



@end
