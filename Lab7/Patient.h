//
//  Patient.h
//  Lab7
//
//  Created by wrj.s on 2018-09-12.
//  Copyright © 2018 wrj.s. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, assign) NSInteger age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *sympton;
@property (nonatomic, strong) NSMutableArray *prescriptionList;

- (instancetype)initWithName: (NSString *)name andAge: (NSUInteger) age andHealthCard: (Boolean) card withSympton: (NSString *) sympton;
- (Boolean) visitDoctor: (Doctor *) doctor;
- (Boolean) requestMedication: (Doctor *) doctor : (Patient *) patient;



@end
