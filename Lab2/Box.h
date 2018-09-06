//
//  Box.h
//  Lab2
//
//  Created by wrj.s on 2018-09-05.
//  Copyright © 2018 wrj.s. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float width;
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float length;

- (instancetype) initWithWidth: (float) width andHeight: (float) height andLength: (float) length;

- (float) volume;

-(float) inBox: (float)  bigBox andBox2: (float) smallBox;
@end
