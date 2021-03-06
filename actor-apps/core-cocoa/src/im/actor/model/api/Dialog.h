//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/Dialog.java
//

#ifndef _APDialog_H_
#define _APDialog_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class APMessage;
@class APMessageStateEnum;
@class APPeer;
@class BSBserValues;
@class BSBserWriter;

@interface APDialog : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPPeer:(APPeer *)peer
                       withInt:(jint)unreadCount
                      withLong:(jlong)sortDate
                       withInt:(jint)senderUid
                      withLong:(jlong)rid
                      withLong:(jlong)date
                 withAPMessage:(APMessage *)message
        withAPMessageStateEnum:(APMessageStateEnum *)state;

- (jlong)getDate;

- (APMessage *)getMessage;

- (APPeer *)getPeer;

- (jlong)getRid;

- (jint)getSenderUid;

- (jlong)getSortDate;

- (APMessageStateEnum *)getState;

- (jint)getUnreadCount;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APDialog)

FOUNDATION_EXPORT void APDialog_initWithAPPeer_withInt_withLong_withInt_withLong_withLong_withAPMessage_withAPMessageStateEnum_(APDialog *self, APPeer *peer, jint unreadCount, jlong sortDate, jint senderUid, jlong rid, jlong date, APMessage *message, APMessageStateEnum *state);

FOUNDATION_EXPORT APDialog *new_APDialog_initWithAPPeer_withInt_withLong_withInt_withLong_withLong_withAPMessage_withAPMessageStateEnum_(APPeer *peer, jint unreadCount, jlong sortDate, jint senderUid, jlong rid, jlong date, APMessage *message, APMessageStateEnum *state) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APDialog_init(APDialog *self);

FOUNDATION_EXPORT APDialog *new_APDialog_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APDialog)

typedef APDialog ImActorModelApiDialog;

#endif // _APDialog_H_
