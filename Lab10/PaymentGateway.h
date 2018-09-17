//
//  PaymentGateway.h
//  Lab10
//
//  Created by wrj.s on 2018-09-14.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate<NSObject>
- (void) processPaymentAmount: (NSInteger) randomDollar;
@end


@interface PaymentGateway : NSObject

@property(nonatomic,weak)id<PaymentDelegate> delegate;
//- (void) processPaymentAmount: (NSInteger) randomDollar;

@end
