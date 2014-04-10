//
//  PlayingCard.h
//  Machismo
//
//  Created by Bunty Makhija on 2/25/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property(strong,nonatomic)NSString *suit;
@property(nonatomic)NSUInteger rank;

+(NSArray *)validsuits;
+(NSUInteger) maxRank;
@end
