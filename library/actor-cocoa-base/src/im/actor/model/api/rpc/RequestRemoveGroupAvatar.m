//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestRemoveGroupAvatar.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/rpc/RequestRemoveGroupAvatar.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestRemoveGroupAvatar () {
 @public
  ImActorModelApiGroupOutPeer *groupPeer_;
  jlong rid_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestRemoveGroupAvatar, groupPeer_, ImActorModelApiGroupOutPeer *)

@implementation ImActorModelApiRpcRequestRemoveGroupAvatar

+ (ImActorModelApiRpcRequestRemoveGroupAvatar *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestRemoveGroupAvatar_fromBytesWithByteArray_(data);
}

- (instancetype)initWithImActorModelApiGroupOutPeer:(ImActorModelApiGroupOutPeer *)groupPeer
                                           withLong:(jlong)rid {
  ImActorModelApiRpcRequestRemoveGroupAvatar_initWithImActorModelApiGroupOutPeer_withLong_(self, groupPeer, rid);
  return self;
}

- (instancetype)init {
  ImActorModelApiRpcRequestRemoveGroupAvatar_init(self);
  return self;
}

- (ImActorModelApiGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupPeer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_ImActorModelApiGroupOutPeer_init()];
  self->rid_ = [values getLongWithInt:4];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->groupPeer_];
  [writer writeLongWithInt:4 withLong:self->rid_];
}

- (NSString *)description {
  NSString *res = @"rpc RemoveGroupAvatar{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"groupPeer=", self->groupPeer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestRemoveGroupAvatar_HEADER;
}

@end

ImActorModelApiRpcRequestRemoveGroupAvatar *ImActorModelApiRpcRequestRemoveGroupAvatar_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestRemoveGroupAvatar_initialize();
  return ((ImActorModelApiRpcRequestRemoveGroupAvatar *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestRemoveGroupAvatar_init(), data));
}

void ImActorModelApiRpcRequestRemoveGroupAvatar_initWithImActorModelApiGroupOutPeer_withLong_(ImActorModelApiRpcRequestRemoveGroupAvatar *self, ImActorModelApiGroupOutPeer *groupPeer, jlong rid) {
  (void) ImActorModelNetworkParserRequest_init(self);
  self->groupPeer_ = groupPeer;
  self->rid_ = rid;
}

ImActorModelApiRpcRequestRemoveGroupAvatar *new_ImActorModelApiRpcRequestRemoveGroupAvatar_initWithImActorModelApiGroupOutPeer_withLong_(ImActorModelApiGroupOutPeer *groupPeer, jlong rid) {
  ImActorModelApiRpcRequestRemoveGroupAvatar *self = [ImActorModelApiRpcRequestRemoveGroupAvatar alloc];
  ImActorModelApiRpcRequestRemoveGroupAvatar_initWithImActorModelApiGroupOutPeer_withLong_(self, groupPeer, rid);
  return self;
}

void ImActorModelApiRpcRequestRemoveGroupAvatar_init(ImActorModelApiRpcRequestRemoveGroupAvatar *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}

ImActorModelApiRpcRequestRemoveGroupAvatar *new_ImActorModelApiRpcRequestRemoveGroupAvatar_init() {
  ImActorModelApiRpcRequestRemoveGroupAvatar *self = [ImActorModelApiRpcRequestRemoveGroupAvatar alloc];
  ImActorModelApiRpcRequestRemoveGroupAvatar_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestRemoveGroupAvatar)
