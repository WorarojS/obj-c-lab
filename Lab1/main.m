//
//  main.m
//  Lab1
//
//  Created by wrj.s on 2018-09-04.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getuserinput(NSString *prompt){
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars,255,stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    return inputString;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(1){
            NSString *strInput = getuserinput(255, @"/nEnter your String: ('q' to quit)");
            if (<#condition#>) {
                <#statements#>
            }
        }
    }
    return 0;
}
