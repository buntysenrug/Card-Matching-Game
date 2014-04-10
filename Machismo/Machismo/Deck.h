//
//  Deck.h
//  Machismo
//
//  Created by Bunty Makhija on 2/25/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"



@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;
-(Card *)drawRandomcard;



@end
