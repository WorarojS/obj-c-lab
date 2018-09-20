//
//  PigLatin.m
//  Lab13
//
//  Created by wrj.s on 2018-09-20.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "PigLatin.h"
#define MAX_CLUSTER 2
@implementation PigLatin : NSObject



-(NSString *)stringByPigLatinization​:(NSString *) input {
    NSMutableString *piglatin = [NSMutableString string];
    input = [input lowercaseString];
    NSArray *strArr = [input componentsSeparatedByString:@" "];
    NSArray *vowel = [NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
    for (NSString * word in strArr) {
        NSMutableString *pigOrder = [NSMutableString string];
        NSUInteger firstVow = word.length;
        if ([self hasCluster:word]) { // check if the word starts with clusters
            NSRange range = NSMakeRange(MAX_CLUSTER, word.length - MAX_CLUSTER);
            [pigOrder appendFormat:@"%@", [word substringWithRange:range]];
            NSRange clusterRange = NSMakeRange(0, 2);
            [pigOrder appendFormat:@"%@", [word substringWithRange:clusterRange]];
        } else { // otherwise search for the first vowel
            for (NSString *v in vowel) {
                NSRange vowRange = [word rangeOfString:v];
                if (vowRange.location < firstVow) {
                    firstVow = vowRange.location; //the first vow at...
                }
            }
            if (firstVow < word.length) {
                NSRange rangeAfterVow = NSMakeRange(firstVow, (word.length - firstVow));
                [pigOrder appendFormat:@"%@", [word substringWithRange:rangeAfterVow]];
            }
            NSRange rangeBeforeVow = NSMakeRange(0, firstVow);
            [pigOrder appendFormat:@"%@", [word substringWithRange:rangeBeforeVow]];
        }
        [piglatin appendFormat:@"%@", [pigOrder capitalizedString]];
        [piglatin appendFormat:@"-- "];
    }
    return [NSString stringWithFormat:@"%@", piglatin];
}

-(BOOL) hasCluster: (NSString *) word {
    NSArray *clusters = @[@"js", @"lo", @"bg", @"tg", @"op", @"fr", @"hi", @"ba", @"po"];
    for (NSString *c in clusters) {
        if ([word hasPrefix:c]) {
            return true;
        }
    }
    return false;
}


@end

@end
