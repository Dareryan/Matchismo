//
//  ViewController.m
//  Matchismo
//
//  Created by Dare Ryan on 1/13/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "ViewController.h"
#import "CardMatchingGame.h"



@interface ViewController ()

@property (strong, nonatomic) Deck *deck;

@property (nonatomic, strong) CardMatchingGame *game;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation ViewController

-(CardMatchingGame *) game
{
    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                          usingDeck:[self createDeck]];
   
    return _game;
}

- (Deck *) deck
{
    if (!_deck) _deck = [self createDeck];
    return _deck;
    
}

-(Deck *) createDeck
{
    return [[PlayingCardDeck alloc]init];
}




- (IBAction)touchCardButton:(UIButton *)sender
{
    int  cardIndex = [self.cardButtons indexOfObject:sender];
    
    [self.game chooseCardAtIndex:cardIndex];
    
    [self updateUI];
}

-(void)updateUI
{
    for (UIButton *cardButton in self.cardButtons)
    {
        int cardIndex = [self.cardButtons indexOfObject:cardButton];
        
        Card *card = [self.game cardAtIndex:cardIndex];
        
        [cardButton setTitle:[self titleForCard:card]
                    forState:UIControlStateNormal];
        
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
       
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d",self.game.score];
}

-(NSString *) titleForCard:(Card *) card
{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *)backgroundImageForCard:(Card*)card
{
    return [UIImage imageNamed: card.isChosen ? @"cardfront" : @"cardback"];
}


@end
