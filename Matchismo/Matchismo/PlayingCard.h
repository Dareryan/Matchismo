//
//  PlayingCard.h
//  StanfordFirstAssignment
//
//  Created by Dare Ryan on 1/13/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;

@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;

+ (NSUInteger)maxRank;

@end
