//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/RpcCallback.java
//

#ifndef _AMRpcCallback_H_
#define _AMRpcCallback_H_

#include "J2ObjC_header.h"

@class AMRpcException;
@class APResponse;

@protocol AMRpcCallback < NSObject, JavaObject >

- (void)onResult:(APResponse *)response;

- (void)onError:(AMRpcException *)e;

@end

J2OBJC_EMPTY_STATIC_INIT(AMRpcCallback)

J2OBJC_TYPE_LITERAL_HEADER(AMRpcCallback)

#define ImActorModelNetworkRpcCallback AMRpcCallback

#endif // _AMRpcCallback_H_
