//
//  GameController.h
//  Lab6
//
//  Created by wrj.s on 2018-09-23.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *displayDice;

- (void) roll;
- (void) displayCurrentDeck;
- (void) holdDice: (NSUInteger) die;
- (void) resetDice;
- (void) holdAll;
- (void) displayScore;

@end
