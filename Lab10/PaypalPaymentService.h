//
//  PaypalPaymentService.h
//  Lab10
//
//  Created by wrj.s on 2018-09-14.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
@interface PaypalPaymentService : NSObject <PaymentDelegate>
- (void) processPaymentAmount: (NSInteger) randomDollar;

@end
