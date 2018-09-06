//
//  Student.h
//  Lab2
//
//  Created by wrj.s on 2018-09-05.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
- (instancetype)initWithId: (int) identification
                   andName: (NSString *) name
                andCountry: (NSString *) country;

@property (nonatomic, assign) int identification;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *country;

@end



