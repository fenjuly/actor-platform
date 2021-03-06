//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestEditGroupAbout.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/rpc/RequestEditGroupAbout.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestEditGroupAbout () {
 @public
  APGroupOutPeer *groupPeer_;
  jlong rid_;
  NSString *about_;
}

@end

J2OBJC_FIELD_SETTER(APRequestEditGroupAbout, groupPeer_, APGroupOutPeer *)
J2OBJC_FIELD_SETTER(APRequestEditGroupAbout, about_, NSString *)

@implementation APRequestEditGroupAbout

+ (APRequestEditGroupAbout *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestEditGroupAbout_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)groupPeer
                              withLong:(jlong)rid
                          withNSString:(NSString *)about {
  APRequestEditGroupAbout_initWithAPGroupOutPeer_withLong_withNSString_(self, groupPeer, rid, about);
  return self;
}

- (instancetype)init {
  APRequestEditGroupAbout_init(self);
  return self;
}

- (APGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (NSString *)getAbout {
  return self->about_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupPeer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APGroupOutPeer_init()];
  self->rid_ = [values getLongWithInt:2];
  self->about_ = [values optStringWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->groupPeer_];
  [writer writeLongWithInt:2 withLong:self->rid_];
  if (self->about_ != nil) {
    [writer writeStringWithInt:3 withNSString:self->about_];
  }
}

- (NSString *)description {
  NSString *res = @"rpc EditGroupAbout{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"groupPeer=", self->groupPeer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestEditGroupAbout_HEADER;
}

@end

APRequestEditGroupAbout *APRequestEditGroupAbout_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestEditGroupAbout_initialize();
  return ((APRequestEditGroupAbout *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestEditGroupAbout_init(), data));
}

void APRequestEditGroupAbout_initWithAPGroupOutPeer_withLong_withNSString_(APRequestEditGroupAbout *self, APGroupOutPeer *groupPeer, jlong rid, NSString *about) {
  (void) APRequest_init(self);
  self->groupPeer_ = groupPeer;
  self->rid_ = rid;
  self->about_ = about;
}

APRequestEditGroupAbout *new_APRequestEditGroupAbout_initWithAPGroupOutPeer_withLong_withNSString_(APGroupOutPeer *groupPeer, jlong rid, NSString *about) {
  APRequestEditGroupAbout *self = [APRequestEditGroupAbout alloc];
  APRequestEditGroupAbout_initWithAPGroupOutPeer_withLong_withNSString_(self, groupPeer, rid, about);
  return self;
}

void APRequestEditGroupAbout_init(APRequestEditGroupAbout *self) {
  (void) APRequest_init(self);
}

APRequestEditGroupAbout *new_APRequestEditGroupAbout_init() {
  APRequestEditGroupAbout *self = [APRequestEditGroupAbout alloc];
  APRequestEditGroupAbout_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestEditGroupAbout)
