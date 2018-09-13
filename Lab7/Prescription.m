//
//  Prescription.m
//  Lab7
//
//  Created by wrj.s on 2018-09-12.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "Prescription.h"
#import "Doctor.h"
#import "Patient.h"

@implementation Prescription

- (instancetype)initWithDoctorName: (Doctor *) doctorName
                        andPatient: (Patient *) patient
                        andSympton: (NSString *) sympton
{
    self = [super init];
    if (self) {
        doctorName = [Doctor new];
        _patient = [Patient new];
        _sympton = [NSString new];
    }
    return self;
}


@end
