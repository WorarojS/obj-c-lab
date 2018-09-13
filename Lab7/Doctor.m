//
//  Doctor.m
//  Lab7
//
//  Created by wrj.s on 2018-09-12.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@interface Doctor(){
@private
    NSMutableArray *patientList;
    NSMutableArray *presctibeMedication;

}
@end


@implementation Doctor
- (instancetype)initWithName: (NSString *)name andSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
        presctibeMedication = [NSMutableArray new];
    }
    return self;
}


- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard
{
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Succesfully added to the patient list.");
        return true;
    }else{
        NSLog(@"Invalid HealthCard");
        return false;
    }
}

- (Boolean) prescribeMedication: (Patient *) patient andDoctorName: (Doctor *) doctor{
    if ([patientList containsObject:patient]) {
        NSLog(@"Medication on the way...");
        
        NSString *sympton = patient.sympton;
        
        Prescription *prescription = [[Prescription alloc]initWithDoctorName:doctor andPatient:patient andSympton:sympton];
                                      
        [presctibeMedication addObject:prescription];
    
        NSLog(@"Patient got it");
        return true;
        
    }else{
        NSLog(@"You are not my patient");
        return false;
    }
    
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"\n--Doctor Information--\nName: %@\nSpecialization: %@", self.name, self.specialization];
}

@end

