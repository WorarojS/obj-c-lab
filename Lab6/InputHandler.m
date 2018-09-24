//
//  InputHandler.m
//  Lab6
//
//  Created by wrj.s on 2018-09-23.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

@implementation InputHandler
+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt{
    if (maxLength < 1) {
        maxLength = 255;
    }
    
    NSLog(@"%@",prompt);
    char inputChars[maxLength];
    
    const char *cstring = fgets(inputChars,maxLength,stdin);
    NSString *result = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    result = [result stringByTrimmingCharactersInSet:whitespaceAndNewLine];
    return result;
}

@end
