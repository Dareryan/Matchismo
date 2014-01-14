//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Dare Ryan on 1/14/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject
//designated initializer
-(instancetype)initWithCardCount:(NSUInteger)count
                       usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;

-(Card *) cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
