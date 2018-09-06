//
//  Student.m
//  Lab2
//
//  Created by wrj.s on 2018-09-05.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "Student.h"

@interface Student()

@end


@implementation Student

- (instancetype)initWithId: (int) identification
                   andName: (NSString *) name
                andCountry: (NSString *) country;
{
    self = [super init];
    if (self) {
        _identification = identification;
        _name = name;
        _country = country;
        
    }
    return self;
}


@end
