//
//  contact.m
//  Lab4
//
//  Created by wrj.s on 2018-09-07.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@" <%@>  <%@> ",self.name,self.email];
}

@end
