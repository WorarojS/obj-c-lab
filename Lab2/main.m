//
//  main.m
//  Lab2
//
//  Created by wrj.s on 2018-09-05.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Box.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
    
        Box *bigbox = [[Box alloc] initWithWidth:20  andHeight: 20 andLength:20];
        NSLog(@"Big box size is: %.2f" , [bigbox volume]);
        Box *smallbox = [[Box alloc] initWithWidth:10  andHeight: 10 andLength:10];
        NSLog(@"%2f time to fit the Big box",  [bigbox inBox:[bigbox volume] andBox2:[smallbox volume]]);
    }
}

