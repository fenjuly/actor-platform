//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/mtp/actors/SenderActor.java
//

#ifndef _MTSenderActor_H_
#define _MTSenderActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/Actor.h"

@class DKActorRef;
@class IOSByteArray;
@class MTMTProto;

@interface MTSenderActor : DKActor

#pragma mark Public

- (instancetype)initWithMTMTProto:(MTMTProto *)proto;

- (void)onReceiveWithId:(id)message;

- (void)postStop;

- (void)preStart;

+ (DKActorRef *)senderActorWithMTMTProto:(MTMTProto *)proto;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor)

FOUNDATION_EXPORT DKActorRef *MTSenderActor_senderActorWithMTMTProto_(MTMTProto *proto);

FOUNDATION_EXPORT void MTSenderActor_initWithMTMTProto_(MTSenderActor *self, MTMTProto *proto);

FOUNDATION_EXPORT MTSenderActor *new_MTSenderActor_initWithMTMTProto_(MTMTProto *proto) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor)

typedef MTSenderActor ImActorModelNetworkMtpActorsSenderActor;

@interface MTSenderActor_SendMessage : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)rid
               withByteArray:(IOSByteArray *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_SendMessage)

FOUNDATION_EXPORT void MTSenderActor_SendMessage_initWithLong_withByteArray_(MTSenderActor_SendMessage *self, jlong rid, IOSByteArray *message);

FOUNDATION_EXPORT MTSenderActor_SendMessage *new_MTSenderActor_SendMessage_initWithLong_withByteArray_(jlong rid, IOSByteArray *message) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_SendMessage)

@interface MTSenderActor_ForgetMessage : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)rid;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_ForgetMessage)

FOUNDATION_EXPORT void MTSenderActor_ForgetMessage_initWithLong_(MTSenderActor_ForgetMessage *self, jlong rid);

FOUNDATION_EXPORT MTSenderActor_ForgetMessage *new_MTSenderActor_ForgetMessage_initWithLong_(jlong rid) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_ForgetMessage)

@interface MTSenderActor_ConfirmMessage : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)rid;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_ConfirmMessage)

FOUNDATION_EXPORT void MTSenderActor_ConfirmMessage_initWithLong_(MTSenderActor_ConfirmMessage *self, jlong rid);

FOUNDATION_EXPORT MTSenderActor_ConfirmMessage *new_MTSenderActor_ConfirmMessage_initWithLong_(jlong rid) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_ConfirmMessage)

@interface MTSenderActor_ConnectionCreated : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_ConnectionCreated)

FOUNDATION_EXPORT void MTSenderActor_ConnectionCreated_init(MTSenderActor_ConnectionCreated *self);

FOUNDATION_EXPORT MTSenderActor_ConnectionCreated *new_MTSenderActor_ConnectionCreated_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_ConnectionCreated)

@interface MTSenderActor_ReadPackageFromConnection : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_ReadPackageFromConnection)

FOUNDATION_EXPORT void MTSenderActor_ReadPackageFromConnection_init(MTSenderActor_ReadPackageFromConnection *self);

FOUNDATION_EXPORT MTSenderActor_ReadPackageFromConnection *new_MTSenderActor_ReadPackageFromConnection_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_ReadPackageFromConnection)

@interface MTSenderActor_NewSession : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)messageId;

- (jlong)getMessageId;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_NewSession)

FOUNDATION_EXPORT void MTSenderActor_NewSession_initWithLong_(MTSenderActor_NewSession *self, jlong messageId);

FOUNDATION_EXPORT MTSenderActor_NewSession *new_MTSenderActor_NewSession_initWithLong_(jlong messageId) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_NewSession)

@interface MTSenderActor_SessionLost : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_SessionLost)

FOUNDATION_EXPORT void MTSenderActor_SessionLost_init(MTSenderActor_SessionLost *self);

FOUNDATION_EXPORT MTSenderActor_SessionLost *new_MTSenderActor_SessionLost_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_SessionLost)

@interface MTSenderActor_ForceAck : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_ForceAck)

FOUNDATION_EXPORT void MTSenderActor_ForceAck_init(MTSenderActor_ForceAck *self);

FOUNDATION_EXPORT MTSenderActor_ForceAck *new_MTSenderActor_ForceAck_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_ForceAck)

@interface MTSenderActor_StopActor : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(MTSenderActor_StopActor)

FOUNDATION_EXPORT void MTSenderActor_StopActor_init(MTSenderActor_StopActor *self);

FOUNDATION_EXPORT MTSenderActor_StopActor *new_MTSenderActor_StopActor_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTSenderActor_StopActor)

#endif // _MTSenderActor_H_
