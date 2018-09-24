//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by wrj.s on 2018-09-24.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//


#import "SecondManager.h"

@implementation SecondManager

- (BOOL)kitchen:(Kitchen *)kitchen
shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return true;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return true;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Bon apetito!");
    DeliveryService *deliveryService = [DeliveryService new];
    [deliveryService deliverPizza:pizza];
}

@end
