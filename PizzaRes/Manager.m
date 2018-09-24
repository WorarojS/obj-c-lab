//
//  Manager.m
//  PizzaRestaurant
//
//  Created by wrj.s on 2018-09-24.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager


- (BOOL)kitchen:(Kitchen *)kitchen
shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        return false;
    } else {
        return true;
    }
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return false;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    DeliveryService *deliveryService = [DeliveryService new];
    [deliveryService deliverPizza:pizza];
}

@end

@end
