//
//  main.m
//  Lab4
//
//  Created by wrj.s on 2018-09-07.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactList = [[ContactList alloc]init];
        InputHandler *InputHistory = [InputHandler new];
        
        while (true) {
        NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Applicatiom\n> _";
        NSString * option = [InputHandler getUserInputWithLength:20 widthPrompt:menu];
        NSLog(@"%@", option);

            if ([option isEqualToString:@"quit"]) {
                break;
            }else if([option isEqualToString:@"new"]){
                NSString *name = [InputHandler getUserInputWithLength:255 widthPrompt:@"Input the name: "];
                NSString *email = [InputHandler getUserInputWithLength:255 widthPrompt:@"Input the email: "];
                
                if([contactList findDuplicate:email] == TRUE){
                    NSLog(@"This Email already exists");
                }else{
                
                Contact *newContact = [[Contact alloc] initWithName:name andEmail:email];
                
                [contactList addContact:newContact];
                }
                
            }else if ([option isEqualToString:@"list"]){
                NSLog(@"%@", contactList);
            
            }else if([option isEqualToString:@"find"]){
                [[InputHistory inputHistory]addObject:option];
                NSString *search = [InputHandler getUserInputWithLength:255 withPrompt:@"Enter the search word"];
                Contact *result = [contactList findContact:search];
                if(result != nil){
                    NSLog(@"<%@> (%@)",[result name],[result email]);
                }else{
                    NSLog(@"%@", @"Not found");
                }
            }else if([option isEqualToString:@"history"]){
                NSLog(@"%@", InputHistory);
                [[InputHistory inputHistory]addObject:option];
            }
        }
    }
    
//        Contact *contact = [[contact alloc] initWithName: @"John Smith" andEmail:@"John@email.com"];
//        NSLog(@"%@",contact);
//    return 0;
}
