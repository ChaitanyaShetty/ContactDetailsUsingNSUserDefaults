//
//  ContactInfo.h
//  contactDetails
//
//  Created by test on 1/6/17.
//  Copyright © 2017 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactInfo : NSObject
@property (nonatomic, strong)NSString* name;
@property (nonatomic, strong)NSString* address;
@property (nonatomic, strong)NSString* phoneNo;
-(instancetype)initWithName:(NSString* )name address:(NSString *) address phoneNumber:(NSString *)phoneNumber;
@end
