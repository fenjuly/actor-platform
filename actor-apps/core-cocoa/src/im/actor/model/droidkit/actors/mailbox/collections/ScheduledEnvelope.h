//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/droidkit/actors/mailbox/collections/ScheduledEnvelope.java
//

#ifndef _ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope_H_
#define _ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope_H_

#include "J2ObjC_header.h"

@class DKEnvelope;

@interface ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)key
                    withLong:(jlong)time
              withDKEnvelope:(DKEnvelope *)envelope;

- (DKEnvelope *)getEnvelope;

- (jlong)getKey;

- (jlong)getTime;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope)

FOUNDATION_EXPORT void ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope_initWithLong_withLong_withDKEnvelope_(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope *self, jlong key, jlong time, DKEnvelope *envelope);

FOUNDATION_EXPORT ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope *new_ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope_initWithLong_withLong_withDKEnvelope_(jlong key, jlong time, DKEnvelope *envelope) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope)

#endif // _ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope_H_