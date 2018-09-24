//
//  InputHandler.h
//  Lab6
//
//  Created by wrj.s on 2018-09-23.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt;

@end
