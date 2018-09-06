//
//  InputHandler.h
//  Lab3
//
//  Created by wrj.s on 2018-09-06.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
+ (NSString *)getUserInputWithLength:(int) maxLength widthPrompt : (NSString* )prompt;
@property (nonatomic,copy) NSString *copied;
@end
