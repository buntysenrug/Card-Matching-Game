//
//  CardGameViewController.m
//  Machismo
//
//  Created by Bunty Makhija on 2/25/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property(strong,nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(Deck*)deck{
    if(!_deck){
        _deck=[self createDeck];
    }
    return _deck;
}

-(Deck *)createDeck{
    return [[PlayingCardDeck alloc]init];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if([sender.currentTitle length]){
    [sender setBackgroundImage:[UIImage imageNamed:@"stanford"]
                      forState:UIControlStateNormal];
    [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        Card *random=[self.deck drawRandomcard];
        if(random){
        [sender setBackgroundImage:[UIImage imageNamed:@"blank card rounded corner"]
                          forState:UIControlStateNormal];
        [sender setTitle:random.contents forState:UIControlStateNormal];
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
