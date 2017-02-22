//
//  ContactInfo.m
//  contactDetails
//
//  Created by test on 1/6/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ContactInfo.h"

@implementation ContactInfo

- (instancetype)initWithName:(NSString *)name address:(NSString *)address phoneNumber:(NSString *)phoneNumber
{
    self = [super init];
    if (self) {
        self.name = name;
        self.address = address;
        self.phoneNo = phoneNumber;
    }
    return self;
}
@end
