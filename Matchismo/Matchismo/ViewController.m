//
//  ViewController.m
//  Matchismo
//
//  Created by Dare Ryan on 1/13/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property(nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) NSMutableArray *cardTitle;

@end

@implementation ViewController






-(void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flips %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    
    _deck = [[PlayingCardDeck alloc]init];
    if ([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else
    {
        Card *randomCard = [_deck drawRandomCard];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        [sender setTitle:[randomCard contents] forState:UIControlStateNormal];
        //[sender setTitle: forState:UIControlStateNormal];
        NSLog(@"%@",[randomCard contents]);
    }
    self.flipCount++;
}


@end
