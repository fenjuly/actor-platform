//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/MTProto.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/NetworkProvider.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/network/Endpoints.h"
#include "im/actor/model/network/mtp/MTProto.h"
#include "im/actor/model/network/mtp/MTProtoCallback.h"
#include "im/actor/model/network/mtp/actors/ManagerActor.h"
#include "im/actor/model/network/mtp/actors/ReceiverActor.h"
#include "im/actor/model/network/mtp/actors/SenderActor.h"
#include "im/actor/model/network/mtp/entity/MTRpcRequest.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/util/MTUids.h"

@interface MTMTProto () {
 @public
  jlong authId_;
  jlong sessionId_;
  AMEndpoints *endpoints_;
  id<MTMTProtoCallback> callback_;
  id<AMNetworkProvider> networkProvider_;
  DKActorRef *receiver_;
  DKActorRef *manager_;
  DKActorRef *sender_;
  NSString *actorPath_;
}

@end

J2OBJC_FIELD_SETTER(MTMTProto, endpoints_, AMEndpoints *)
J2OBJC_FIELD_SETTER(MTMTProto, callback_, id<MTMTProtoCallback>)
J2OBJC_FIELD_SETTER(MTMTProto, networkProvider_, id<AMNetworkProvider>)
J2OBJC_FIELD_SETTER(MTMTProto, receiver_, DKActorRef *)
J2OBJC_FIELD_SETTER(MTMTProto, manager_, DKActorRef *)
J2OBJC_FIELD_SETTER(MTMTProto, sender_, DKActorRef *)
J2OBJC_FIELD_SETTER(MTMTProto, actorPath_, NSString *)

@implementation MTMTProto

- (instancetype)initWithLong:(jlong)authId
                    withLong:(jlong)sessionId
             withAMEndpoints:(AMEndpoints *)endpoints
       withMTMTProtoCallback:(id<MTMTProtoCallback>)callback
       withAMNetworkProvider:(id<AMNetworkProvider>)networkProvider {
  MTMTProto_initWithLong_withLong_withAMEndpoints_withMTMTProtoCallback_withAMNetworkProvider_(self, authId, sessionId, endpoints, callback, networkProvider);
  return self;
}

- (id<AMNetworkProvider>)getNetworkProvider {
  return networkProvider_;
}

- (id<MTMTProtoCallback>)getCallback {
  return callback_;
}

- (AMEndpoints *)getEndpoints {
  return endpoints_;
}

- (jlong)getAuthId {
  return authId_;
}

- (jlong)getSessionId {
  return sessionId_;
}

- (NSString *)getActorPath {
  return actorPath_;
}

- (jlong)sendRpcMessageWithMTProtoStruct:(MTProtoStruct *)protoStruct {
  jlong mtId = ImActorModelNetworkUtilMTUids_nextId();
  [((DKActorRef *) nil_chk(sender_)) sendWithId:new_MTSenderActor_SendMessage_initWithLong_withByteArray_(mtId, [new_MTMTRpcRequest_initWithByteArray_([((MTProtoStruct *) nil_chk(protoStruct)) toByteArray]) toByteArray])];
  return mtId;
}

- (void)cancelRpcWithLong:(jlong)mtId {
  [((DKActorRef *) nil_chk(sender_)) sendWithId:new_MTSenderActor_ForgetMessage_initWithLong_(mtId)];
}

@end

void MTMTProto_initWithLong_withLong_withAMEndpoints_withMTMTProtoCallback_withAMNetworkProvider_(MTMTProto *self, jlong authId, jlong sessionId, AMEndpoints *endpoints, id<MTMTProtoCallback> callback, id<AMNetworkProvider> networkProvider) {
  (void) NSObject_init(self);
  self->actorPath_ = @"mtproto";
  self->authId_ = authId;
  self->sessionId_ = sessionId;
  self->endpoints_ = endpoints;
  self->callback_ = callback;
  self->networkProvider_ = networkProvider;
  self->manager_ = MTManagerActor_managerWithMTMTProto_(self);
  self->sender_ = MTSenderActor_senderActorWithMTMTProto_(self);
  self->receiver_ = MTReceiverActor_receiverWithMTMTProto_(self);
}

MTMTProto *new_MTMTProto_initWithLong_withLong_withAMEndpoints_withMTMTProtoCallback_withAMNetworkProvider_(jlong authId, jlong sessionId, AMEndpoints *endpoints, id<MTMTProtoCallback> callback, id<AMNetworkProvider> networkProvider) {
  MTMTProto *self = [MTMTProto alloc];
  MTMTProto_initWithLong_withLong_withAMEndpoints_withMTMTProtoCallback_withAMNetworkProvider_(self, authId, sessionId, endpoints, callback, networkProvider);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTMTProto)
