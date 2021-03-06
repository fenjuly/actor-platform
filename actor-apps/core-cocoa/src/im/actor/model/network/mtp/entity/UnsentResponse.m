//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/UnsentResponse.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/UnsentResponse.h"
#include "java/io/IOException.h"

@interface MTUnsentResponse () {
 @public
  jlong messageId_;
  jlong responseMessageId_;
  jint len_;
}

@end

@implementation MTUnsentResponse

- (instancetype)initWithLong:(jlong)messageId
                    withLong:(jlong)responseMessageId
                     withInt:(jint)len {
  MTUnsentResponse_initWithLong_withLong_withInt_(self, messageId, responseMessageId, len);
  return self;
}

- (jlong)getMessageId {
  return messageId_;
}

- (jlong)getResponseMessageId {
  return responseMessageId_;
}

- (jint)getLen {
  return len_;
}

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTUnsentResponse_initWithBSDataInput_(self, stream);
  return self;
}

- (jbyte)getHeader {
  return MTUnsentResponse_HEADER;
}

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeLongWithLong:messageId_];
  [bs writeLongWithLong:responseMessageId_];
  [bs writeIntWithInt:len_];
}

- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  messageId_ = [((BSDataInput *) nil_chk(bs)) readLong];
  responseMessageId_ = [bs readLong];
  len_ = [bs readInt];
}

- (NSString *)description {
  return JreStrcat("$J$JC", @"UnsentResponse[", messageId_, @"->", responseMessageId_, ']');
}

@end

void MTUnsentResponse_initWithLong_withLong_withInt_(MTUnsentResponse *self, jlong messageId, jlong responseMessageId, jint len) {
  (void) MTProtoStruct_init(self);
  self->messageId_ = messageId;
  self->responseMessageId_ = responseMessageId;
  self->len_ = len;
}

MTUnsentResponse *new_MTUnsentResponse_initWithLong_withLong_withInt_(jlong messageId, jlong responseMessageId, jint len) {
  MTUnsentResponse *self = [MTUnsentResponse alloc];
  MTUnsentResponse_initWithLong_withLong_withInt_(self, messageId, responseMessageId, len);
  return self;
}

void MTUnsentResponse_initWithBSDataInput_(MTUnsentResponse *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}

MTUnsentResponse *new_MTUnsentResponse_initWithBSDataInput_(BSDataInput *stream) {
  MTUnsentResponse *self = [MTUnsentResponse alloc];
  MTUnsentResponse_initWithBSDataInput_(self, stream);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTUnsentResponse)
