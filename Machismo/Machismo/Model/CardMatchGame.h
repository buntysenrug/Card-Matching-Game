//
//  CardMatchGame.h
//  Machismo
//
//  Created by Bunty Makhija on 5/8/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
@interface CardMatchGame : NSObject
-(instancetype)initCardCount:(NSUInteger)count
                   usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property(nonatomic,readonly)NSInteger score;
@property(nonatomic,readonly)NSInteger no_of_matches;


@end
