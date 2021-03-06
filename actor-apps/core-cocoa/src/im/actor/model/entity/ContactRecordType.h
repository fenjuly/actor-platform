//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/ContactRecordType.java
//

#ifndef _AMContactRecordType_H_
#define _AMContactRecordType_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, AMContactRecordType) {
  AMContactRecordType_PHONE = 0,
  AMContactRecordType_EMAIL = 1,
};

@interface AMContactRecordTypeEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *AMContactRecordTypeEnum_values();

+ (AMContactRecordTypeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT AMContactRecordTypeEnum *AMContactRecordTypeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(AMContactRecordTypeEnum)

FOUNDATION_EXPORT AMContactRecordTypeEnum *AMContactRecordTypeEnum_values_[];

#define AMContactRecordTypeEnum_PHONE AMContactRecordTypeEnum_values_[AMContactRecordType_PHONE]
J2OBJC_ENUM_CONSTANT_GETTER(AMContactRecordTypeEnum, PHONE)

#define AMContactRecordTypeEnum_EMAIL AMContactRecordTypeEnum_values_[AMContactRecordType_EMAIL]
J2OBJC_ENUM_CONSTANT_GETTER(AMContactRecordTypeEnum, EMAIL)

J2OBJC_TYPE_LITERAL_HEADER(AMContactRecordTypeEnum)

typedef AMContactRecordTypeEnum ImActorModelEntityContactRecordTypeEnum;

#endif // _AMContactRecordType_H_
