//
//  Manager.h
//  PizzaRestaurant
//
//  Created by wrj.s on 2018-09-24.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "Kitchen.h"
#import "DeliveryService.h"

@interface Manager : NSObject <KitchenDelegate>
@property (nonatomic, weak) DeliveryService *deliveryService;

@end
