//
//  Box.m
//  Lab2
//
//  Created by wrj.s on 2018-09-05.
//  Copyright © 2018 wrj.s. All rights reserved.
//
#import "Box.h"

@implementation Box

- (instancetype) initWithWidth: (float) width andHeight: (float) height andLength: (float) length;
{
    self = [super init];
    if(self) {
        _width= width;
        _height = height;
        _length = length;
    }
    return self;
}
- (float) volume {
    return _width *_height* _length;
}

-(float) inBox: (float)  bigBox andBox2: (float) smallBox
{
    return  bigBox / smallBox;
}
@end
