//
//  main.m
//  Lab3
//
//  Created by wrj.s on 2018-09-06.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        while (gameOn) {
            AdditionQuestion *q = [AdditionQuestion new];
            NSString *userAnswer =  [InputHandler getUserInputWithLength:10 withprompt: [q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
            if ([q answer] == userAnsInt) {
                NSLog(@"Right");
            } else if ([userAnswer isEqualToString:@"qite"]){
                gameOn = NO;
            } else{
                NSLog(@"Wrong, Answer is: %lld",[q answer]);
            }
            
            break;
        }
        
        
        
    }
    return 0;
}
