//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/api/rpc/ResponseImportContacts.java
//

#ifndef _APResponseImportContacts_H_
#define _APResponseImportContacts_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define APResponseImportContacts_HEADER 8

@interface APResponseImportContacts : APResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users
                             withInt:(jint)seq
                       withByteArray:(IOSByteArray *)state;

+ (APResponseImportContacts *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (id<JavaUtilList>)getUsers;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseImportContacts)

J2OBJC_STATIC_FIELD_GETTER(APResponseImportContacts, HEADER, jint)

FOUNDATION_EXPORT APResponseImportContacts *APResponseImportContacts_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(APResponseImportContacts *self, id<JavaUtilList> users, jint seq, IOSByteArray *state);

FOUNDATION_EXPORT APResponseImportContacts *new_APResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(id<JavaUtilList> users, jint seq, IOSByteArray *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APResponseImportContacts_init(APResponseImportContacts *self);

FOUNDATION_EXPORT APResponseImportContacts *new_APResponseImportContacts_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseImportContacts)

typedef APResponseImportContacts ImActorModelApiRpcResponseImportContacts;

#endif // _APResponseImportContacts_H_