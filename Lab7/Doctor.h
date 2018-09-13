//
//  Doctor.h
//  Lab7
//
//  Created by wrj.s on 2018-09-12.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
@interface Doctor : NSObject

@property (nonatomic,strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;

- (instancetype)initWithName: (NSString *)name andSpecialization: (NSString *) specialization;
- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard;
- (Boolean) prescribeMedication: (Patient *) patient andDoctorName: (Doctor *) doctor;


@end
