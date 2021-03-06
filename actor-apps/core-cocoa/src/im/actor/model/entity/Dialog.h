//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/Dialog.java
//

#ifndef _AMDialog_H_
#define _AMDialog_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/engine/ListEngineItem.h"

@class AMAvatar;
@class AMContentTypeEnum;
@class AMMessageStateEnum;
@class AMPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol BSBserCreator;

@interface AMDialog : BSBserObject < DKListEngineItem >

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)sortKey
                  withNSString:(NSString *)dialogTitle
                  withAMAvatar:(AMAvatar *)dialogAvatar
                       withInt:(jint)unreadCount
                      withLong:(jlong)rid
         withAMContentTypeEnum:(AMContentTypeEnum *)messageType
                  withNSString:(NSString *)text
        withAMMessageStateEnum:(AMMessageStateEnum *)status
                       withInt:(jint)senderId
                      withLong:(jlong)date
                       withInt:(jint)relatedUid;

- (AMDialog *)editPeerInfoWithNSString:(NSString *)title
                          withAMAvatar:(AMAvatar *)dialogAvatar;

+ (AMDialog *)fromBytesWithByteArray:(IOSByteArray *)date;

- (jlong)getDate;

- (AMAvatar *)getDialogAvatar;

- (NSString *)getDialogTitle;

- (jlong)getEngineId;

- (NSString *)getEngineSearch;

- (jlong)getEngineSort;

- (AMContentTypeEnum *)getMessageType;

- (AMPeer *)getPeer;

- (jint)getRelatedUid;

- (jlong)getRid;

- (jint)getSenderId;

- (jlong)getSortDate;

- (AMMessageStateEnum *)getStatus;

- (NSString *)getText;

- (jint)getUnreadCount;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_STATIC_INIT(AMDialog)

FOUNDATION_EXPORT id<BSBserCreator> AMDialog_CREATOR_;
J2OBJC_STATIC_FIELD_GETTER(AMDialog, CREATOR_, id<BSBserCreator>)
J2OBJC_STATIC_FIELD_SETTER(AMDialog, CREATOR_, id<BSBserCreator>)

FOUNDATION_EXPORT AMDialog *AMDialog_fromBytesWithByteArray_(IOSByteArray *date);

FOUNDATION_EXPORT void AMDialog_initWithAMPeer_withLong_withNSString_withAMAvatar_withInt_withLong_withAMContentTypeEnum_withNSString_withAMMessageStateEnum_withInt_withLong_withInt_(AMDialog *self, AMPeer *peer, jlong sortKey, NSString *dialogTitle, AMAvatar *dialogAvatar, jint unreadCount, jlong rid, AMContentTypeEnum *messageType, NSString *text, AMMessageStateEnum *status, jint senderId, jlong date, jint relatedUid);

FOUNDATION_EXPORT AMDialog *new_AMDialog_initWithAMPeer_withLong_withNSString_withAMAvatar_withInt_withLong_withAMContentTypeEnum_withNSString_withAMMessageStateEnum_withInt_withLong_withInt_(AMPeer *peer, jlong sortKey, NSString *dialogTitle, AMAvatar *dialogAvatar, jint unreadCount, jlong rid, AMContentTypeEnum *messageType, NSString *text, AMMessageStateEnum *status, jint senderId, jlong date, jint relatedUid) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDialog)

typedef AMDialog ImActorModelEntityDialog;

#endif // _AMDialog_H_
