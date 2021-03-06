//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseMakeUserAdmin.java
//

#ifndef _APResponseMakeUserAdmin_H_
#define _APResponseMakeUserAdmin_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define APResponseMakeUserAdmin_HEADER 215

@interface APResponseMakeUserAdmin : APResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)members
                             withInt:(jint)seq
                       withByteArray:(IOSByteArray *)state;

+ (APResponseMakeUserAdmin *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getMembers;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseMakeUserAdmin)

J2OBJC_STATIC_FIELD_GETTER(APResponseMakeUserAdmin, HEADER, jint)

FOUNDATION_EXPORT APResponseMakeUserAdmin *APResponseMakeUserAdmin_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseMakeUserAdmin_initWithJavaUtilList_withInt_withByteArray_(APResponseMakeUserAdmin *self, id<JavaUtilList> members, jint seq, IOSByteArray *state);

FOUNDATION_EXPORT APResponseMakeUserAdmin *new_APResponseMakeUserAdmin_initWithJavaUtilList_withInt_withByteArray_(id<JavaUtilList> members, jint seq, IOSByteArray *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APResponseMakeUserAdmin_init(APResponseMakeUserAdmin *self);

FOUNDATION_EXPORT APResponseMakeUserAdmin *new_APResponseMakeUserAdmin_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseMakeUserAdmin)

typedef APResponseMakeUserAdmin ImActorModelApiRpcResponseMakeUserAdmin;

#endif // _APResponseMakeUserAdmin_H_
