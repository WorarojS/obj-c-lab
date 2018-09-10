//
//  ContactList.m
//  Lab4
//
//  Created by wrj.s on 2018-09-07.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray array];
        
    }
    return self;
}

-(void) addContact: (Contact *) newContact{
    [_contactList addObject: newContact];
    
}

- (NSString *)description{
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    for (Contact *contact in _contactList) {
        NSString *contactStr = [NSString stringWithFormat:@"%d: %@\n",count,contact];
        count++;
        [result appendString: contactStr];
    }
//    for (Contact *contact in _contactList){
//        NSLog(@"%d: %@",count,contact);
//        count++;
//    }
    return result;
}

- (Contact *) findContact: (NSString *) checkword{
    for(Contact *contact in _contactList){
        if([[contact name] isEqualToString:checkword] || [[contact email] isEqualToString:checkword]){
            return contact;
        }
    }
    return nil;
}

- (BOOL)findDuplicate:(NSString *) sameEmail{
    for (Contact *contact in _contactList) {
        if([[contact email] isEqualToString:sameEmail]){
            return TRUE;
        }
    }
    return FALSE;
}


@end
