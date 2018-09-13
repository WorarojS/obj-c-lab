//
//  main.m
//  Lab7
//
//  Created by wrj.s on 2018-09-12.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *kenta = [[Patient alloc] initWithName:@"Kenta" andAge:16 andHealthCard:true withSympton:@"Headach"];
        Patient *javier = [[Patient alloc] initWithName:@"Javier" andAge:16 andHealthCard:false withSympton:@"HIV"];
        Doctor *Minami = [[Doctor alloc]initWithName:@"Minami" andSpecialization:@""];
        
        NSLog(@"%@", [kenta description]);
        [kenta visitDoctor:Minami];
        [Minami prescribeMedication:kenta andDoctorName:Minami];
        
        NSLog(@"%@", [javier description]);
        [javier visitDoctor:Minami];
        [Minami prescribeMedication:javier andDoctorName:Minami];

    return 0;
}
}
