//
//  Prescription.h
//  Lab7
//
//  Created by wrj.s on 2018-09-12.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;
@class Patient;


@interface Prescription : NSObject

@property (nonatomic, strong) Patient *patient;
@property (nonatomic, strong) NSString *prescription;
@property (nonatomic, strong) NSString *sympton;


- (instancetype)initWithDoctorName: (Doctor *) doctorName
                        andPatient: (Patient *) patient
                        andSympton: (NSString *) sympton;



@end
