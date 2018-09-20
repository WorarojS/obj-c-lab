//
//  main.m
//  Lab13
//
//  Created by wrj.s on 2018-09-19.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Input the word: ");
        char str[255];
        fgets(str, 255, stdin);
        NSString *input = [[NSString alloc] initWithUTF8String:str];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSLog(@"%@",[input stringByPigLatinization​:input]);
        
    }
    return 0;
}
