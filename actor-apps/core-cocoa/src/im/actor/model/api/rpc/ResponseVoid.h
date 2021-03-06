//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseVoid.java
//

#ifndef _APResponseVoid_H_
#define _APResponseVoid_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APResponseVoid_HEADER 50

@interface APResponseVoid : APResponse

#pragma mark Public

- (instancetype)init;

+ (APResponseVoid *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseVoid)

J2OBJC_STATIC_FIELD_GETTER(APResponseVoid, HEADER, jint)

FOUNDATION_EXPORT APResponseVoid *APResponseVoid_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseVoid_init(APResponseVoid *self);

FOUNDATION_EXPORT APResponseVoid *new_APResponseVoid_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseVoid)

typedef APResponseVoid ImActorModelApiRpcResponseVoid;

#endif // _APResponseVoid_H_
