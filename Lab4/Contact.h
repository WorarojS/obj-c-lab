//
//  contact.h
//  Lab4
//
//  Created by wrj.s on 2018-09-07.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *email;

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email;

@end
