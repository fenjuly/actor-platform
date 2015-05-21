//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetVoxUser.java
//

#ifndef _ImActorModelApiRpcRequestGetVoxUser_H_
#define _ImActorModelApiRpcRequestGetVoxUser_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiUserOutPeer;

#define ImActorModelApiRpcRequestGetVoxUser_HEADER 131

@interface ImActorModelApiRpcRequestGetVoxUser : ImActorModelNetworkParserRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithImActorModelApiUserOutPeer:(ImActorModelApiUserOutPeer *)userPeer;

+ (ImActorModelApiRpcRequestGetVoxUser *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (ImActorModelApiUserOutPeer *)getUserPeer;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestGetVoxUser)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestGetVoxUser, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcRequestGetVoxUser *ImActorModelApiRpcRequestGetVoxUser_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcRequestGetVoxUser_initWithImActorModelApiUserOutPeer_(ImActorModelApiRpcRequestGetVoxUser *self, ImActorModelApiUserOutPeer *userPeer);

FOUNDATION_EXPORT ImActorModelApiRpcRequestGetVoxUser *new_ImActorModelApiRpcRequestGetVoxUser_initWithImActorModelApiUserOutPeer_(ImActorModelApiUserOutPeer *userPeer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcRequestGetVoxUser_init(ImActorModelApiRpcRequestGetVoxUser *self);

FOUNDATION_EXPORT ImActorModelApiRpcRequestGetVoxUser *new_ImActorModelApiRpcRequestGetVoxUser_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestGetVoxUser)

#endif // _ImActorModelApiRpcRequestGetVoxUser_H_