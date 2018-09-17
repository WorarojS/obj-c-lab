//
//  main.m
//  Lab10
//
//  Created by wrj.s on 2018-09-14.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char str[0];
      NSInteger randomDollar = arc4random_uniform(1001) + 100;
        NSLog(@"%lu", randomDollar);
        
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method:\n 1: Paypal\n 2: Stripe\n 3: Amazon");
        fgets(str, 255, stdin);
        int x = atoi(str);
        
        PaymentGateway *payment = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        StripePaymentService *strip = [StripePaymentService new];
        
        switch (x) {
            case 1:
                payment.delegate = paypal;
                [paypal processPaymentAmount:randomDollar];
                break;
            case 2:
                payment.delegate = amazon;
                [amazon processPaymentAmount:randomDollar];
                break;
            case 3:
                payment.delegate = strip;
                [strip processPaymentAmount:randomDollar];
                break;
            default:
                break;
        }
        
       
    }
    return 0;
}
