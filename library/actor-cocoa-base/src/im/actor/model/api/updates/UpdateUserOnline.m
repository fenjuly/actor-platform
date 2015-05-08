//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateUserOnline.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateUserOnline.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateUserOnline () {
 @public
  jint uid_;
}

@end

@implementation ImActorModelApiUpdatesUpdateUserOnline

+ (ImActorModelApiUpdatesUpdateUserOnline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateUserOnline_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)uid {
  ImActorModelApiUpdatesUpdateUserOnline_initWithInt_(self, uid);
  return self;
}

- (instancetype)init {
  ImActorModelApiUpdatesUpdateUserOnline_init(self);
  return self;
}

- (jint)getUid {
  return self->uid_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
}

- (NSString *)description {
  NSString *res = @"update UserOnline{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"uid=", self->uid_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateUserOnline_HEADER;
}

@end

ImActorModelApiUpdatesUpdateUserOnline *ImActorModelApiUpdatesUpdateUserOnline_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateUserOnline_initialize();
  return ((ImActorModelApiUpdatesUpdateUserOnline *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiUpdatesUpdateUserOnline_init(), data));
}

void ImActorModelApiUpdatesUpdateUserOnline_initWithInt_(ImActorModelApiUpdatesUpdateUserOnline *self, jint uid) {
  (void) ImActorModelNetworkParserUpdate_init(self);
  self->uid_ = uid;
}

ImActorModelApiUpdatesUpdateUserOnline *new_ImActorModelApiUpdatesUpdateUserOnline_initWithInt_(jint uid) {
  ImActorModelApiUpdatesUpdateUserOnline *self = [ImActorModelApiUpdatesUpdateUserOnline alloc];
  ImActorModelApiUpdatesUpdateUserOnline_initWithInt_(self, uid);
  return self;
}

void ImActorModelApiUpdatesUpdateUserOnline_init(ImActorModelApiUpdatesUpdateUserOnline *self) {
  (void) ImActorModelNetworkParserUpdate_init(self);
}

ImActorModelApiUpdatesUpdateUserOnline *new_ImActorModelApiUpdatesUpdateUserOnline_init() {
  ImActorModelApiUpdatesUpdateUserOnline *self = [ImActorModelApiUpdatesUpdateUserOnline alloc];
  ImActorModelApiUpdatesUpdateUserOnline_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateUserOnline)
