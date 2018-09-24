//
//  Dice.m
//  Lab6
//
//  Created by wrj.s on 2018-09-23.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _faceValue = arc4random_uniform(6) + 1;
        _held = false;
    }
    return self;
}

- (void)roll {
    _faceValue = arc4random_uniform(6) + 1;
}

+ (instancetype) dice {
    return [[self alloc] init];
}

- (NSString *)description
{
    switch (_faceValue) {
        case 1:
            if (_held) {
                return @"[⚀]";
            }
            return @"⚀";
        case 2:
            if (_held) {
                return @"[⚁]";
            }
            return @"⚁";
        case 3:
            if (_held) {
                return @"[⚂]";
            }
            return @"⚁";
        case 4:
            if (_held) {
                return @"[⚃]";
            }
            return @"⚃";
        case 5:
            if (_held) {
                return @"[⚄]";
            }
            return @"⚄";
        case 6:
            if (_held) {
                return @"[⚅]";
            }
            return @"⚅";
        default:
            return @"Invalid Die";
    }
    return 0;
}

@end

@end
