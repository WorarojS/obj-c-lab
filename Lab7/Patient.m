//
//  Patient.m
//  Lab7
//
//  Created by wrj.s on 2018-09-12.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@interface Patient(){
    @private
    Boolean healthCard;
  
}
@end


@implementation Patient
- (instancetype)initWithName: (NSString *)name andAge: (NSUInteger) age andHealthCard: (Boolean) card withSympton: (NSString *) sympton
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        healthCard = card;
        _sympton = sympton;
        _prescriptionList = [NSMutableArray new];

    }
    return self;
}



- (Boolean) visitDoctor: (Doctor *) doctor {
    if (healthCard) {
        NSLog(@"You are accepted! How can I help you?");
        return [doctor acceptPatient: self withHealthCard: healthCard];
    } else{
        NSLog(@"You are not acceptable. sorry..");
    return [doctor acceptPatient: self withHealthCard: false];
}
}



- (Boolean) requestMedication: (Doctor *) doctor : (Patient *) patient{
    if ([doctor prescribeMedication:patient andDoctorName:doctor]) {
        NSLog(@"Got the medication");
        return true;
    }else{
        NSLog(@"Invalid Healtcard");
        return false;
    }
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"\n--Patient Information--\nName: %@\nAge: %lu\nSympton: %@", self.name, (unsigned long)self.age, self.sympton];
}


@end
