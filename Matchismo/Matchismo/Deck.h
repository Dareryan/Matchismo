//
//  Deck.h
//  StanfordFirstAssignment
//
//  Created by Dare Ryan on 1/13/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end
