//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateContactsAdded.java
//

#ifndef _APUpdateContactsAdded_H_
#define _APUpdateContactsAdded_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define APUpdateContactsAdded_HEADER 40

@interface APUpdateContactsAdded : APUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)uids;

+ (APUpdateContactsAdded *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getUids;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUpdateContactsAdded)

J2OBJC_STATIC_FIELD_GETTER(APUpdateContactsAdded, HEADER, jint)

FOUNDATION_EXPORT APUpdateContactsAdded *APUpdateContactsAdded_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APUpdateContactsAdded_initWithJavaUtilList_(APUpdateContactsAdded *self, id<JavaUtilList> uids);

FOUNDATION_EXPORT APUpdateContactsAdded *new_APUpdateContactsAdded_initWithJavaUtilList_(id<JavaUtilList> uids) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUpdateContactsAdded_init(APUpdateContactsAdded *self);

FOUNDATION_EXPORT APUpdateContactsAdded *new_APUpdateContactsAdded_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUpdateContactsAdded)

typedef APUpdateContactsAdded ImActorModelApiUpdatesUpdateContactsAdded;

#endif // _APUpdateContactsAdded_H_
