//
//  ContactList.h
//  Lab4
//
//  Created by wrj.s on 2018-09-07.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contactList;
@property (nonatomic,strong) NSMutableArray *inputHistory;


- (void) addContact: (Contact *) newContact;
- (NSString *)description;
- (Contact *) findContact: (NSString *) checkword;
- (BOOL)findDuplicate:(NSString *) sameEmail;


@end
