//
//  PlayingCard.m
//  Machismo
//
//  Created by Bunty Makhija on 2/25/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit=_suit;
@synthesize rank=_rank;

+(NSArray *)validsuits{
    return @[@"♣︎",@"♥︎",@"♦︎",@"♠︎"];
}

-(void)setSuit:(NSString *)suit{
    if([[PlayingCard validsuits] containsObject:suit]){
        _suit=suit;
    }
}

-(NSString *)suit{
    return _suit ? _suit:@"?";
}

+(NSArray *)rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}



+(NSUInteger)maxRank{
    return [[self rankStrings]count]-1;
}

-(NSString *)contents{
    NSArray *rankStrings=[PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

-(void)setRank:(NSUInteger)rank{
    if(rank<=[PlayingCard maxRank]){
        _rank = rank;
    }
}

-(int)match:(NSArray *)otherCards
{
    int score=0;
    if([otherCards count]==1){
        PlayingCard *othercard =[otherCards firstObject];
        if([self.suit isEqualToString:othercard.suit]){
            score=1;
        }else if(self.rank==othercard.rank){
            score=4;
        }
    }
    
    return score;
}

@end
