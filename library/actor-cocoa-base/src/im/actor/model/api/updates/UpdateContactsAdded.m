//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateContactsAdded.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateContactsAdded.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiUpdatesUpdateContactsAdded () {
 @public
  id<JavaUtilList> uids_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateContactsAdded, uids_, id<JavaUtilList>)

@implementation ImActorModelApiUpdatesUpdateContactsAdded

+ (ImActorModelApiUpdatesUpdateContactsAdded *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateContactsAdded_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)uids {
  ImActorModelApiUpdatesUpdateContactsAdded_initWithJavaUtilList_(self, uids);
  return self;
}

- (instancetype)init {
  ImActorModelApiUpdatesUpdateContactsAdded_init(self);
  return self;
}

- (id<JavaUtilList>)getUids {
  return self->uids_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uids_ = [((BSBserValues *) nil_chk(values)) getRepeatedIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedIntWithInt:1 withJavaUtilList:self->uids_];
}

- (NSString *)description {
  NSString *res = @"update ContactsAdded{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"uids=", [((id<JavaUtilList>) nil_chk(self->uids_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateContactsAdded_HEADER;
}

@end

ImActorModelApiUpdatesUpdateContactsAdded *ImActorModelApiUpdatesUpdateContactsAdded_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateContactsAdded_initialize();
  return ((ImActorModelApiUpdatesUpdateContactsAdded *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiUpdatesUpdateContactsAdded_init(), data));
}

void ImActorModelApiUpdatesUpdateContactsAdded_initWithJavaUtilList_(ImActorModelApiUpdatesUpdateContactsAdded *self, id<JavaUtilList> uids) {
  (void) ImActorModelNetworkParserUpdate_init(self);
  self->uids_ = uids;
}

ImActorModelApiUpdatesUpdateContactsAdded *new_ImActorModelApiUpdatesUpdateContactsAdded_initWithJavaUtilList_(id<JavaUtilList> uids) {
  ImActorModelApiUpdatesUpdateContactsAdded *self = [ImActorModelApiUpdatesUpdateContactsAdded alloc];
  ImActorModelApiUpdatesUpdateContactsAdded_initWithJavaUtilList_(self, uids);
  return self;
}

void ImActorModelApiUpdatesUpdateContactsAdded_init(ImActorModelApiUpdatesUpdateContactsAdded *self) {
  (void) ImActorModelNetworkParserUpdate_init(self);
}

ImActorModelApiUpdatesUpdateContactsAdded *new_ImActorModelApiUpdatesUpdateContactsAdded_init() {
  ImActorModelApiUpdatesUpdateContactsAdded *self = [ImActorModelApiUpdatesUpdateContactsAdded alloc];
  ImActorModelApiUpdatesUpdateContactsAdded_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateContactsAdded)
