//
//  Card.h
//  Machismo
//
//  Created by Bunty Makhija on 2/25/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong,nonatomic) NSString *contents;
@property(nonatomic,getter = isChosen)BOOL chosen;
@property(nonatomic,getter=isMatched)BOOL matched;

-(int)match:(NSArray *)otherCards;



@end
