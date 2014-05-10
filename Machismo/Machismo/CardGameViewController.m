//
//  CardGameViewController.m
//  Machismo
//
//  Created by Bunty Makhija on 5/8/14.
//  Copyright (c) 2014 Learning Development. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"
#import "CardMatchGame.h"

@interface CardGameViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property(strong,nonatomic) Deck *deck;
@property(strong,nonatomic) CardMatchGame *game;
@property(readwrite,nonatomic) NSInteger enabled_button;
@property (weak, nonatomic) IBOutlet UILabel *score;



@end

@implementation CardGameViewController

- (IBAction)touchButton:(UIButton *)sender {
    int cardIndex=[self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
    
}

-(void)updateUI{
    for(UIButton *cardButton in self.cardButtons){
        int cardIndex=[self.cardButtons indexOfObject:cardButton];
        Card *card=[self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleforCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageofCard:card] forState:UIControlStateNormal];
        cardButton.enabled=!card.isMatched;
        self.score.text=[NSString stringWithFormat:@"Score is :- @%d",self.game.score];
        if(([self.cardButtons count] - (self.game.no_of_matches*2)) == 1){
            UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Congratulations" message:@"You completed successfully" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            [alert dismissWithClickedButtonIndex:0 animated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
            
        }
    }
}


-(NSString *)titleforCard:(Card *)card{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *)backgroundImageofCard:(Card *)card{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
    
}

-(CardMatchGame *)game{
    if(!_game){
        _game=[[CardMatchGame alloc] initCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    }
    return _game;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(Deck *)createDeck{
    return [[PlayingCardDeck alloc]init];
}

@end
