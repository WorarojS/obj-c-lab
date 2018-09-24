//
//  Dice.h
//  Lab6
//
//  Created by wrj.s on 2018-09-23.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSInteger faceValue;
@property (nonatomic, assign) Boolean held;

+ (instancetype) dice;
- (void)roll;


@end
