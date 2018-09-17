//
//  StripePaymentService.m
//  Lab10
//
//  Created by wrj.s on 2018-09-14.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
- (void) processPaymentAmount: (NSInteger) randomDollar{
    NSLog(@"Strip processed amount $ %ld",randomDollar);
}
@end
