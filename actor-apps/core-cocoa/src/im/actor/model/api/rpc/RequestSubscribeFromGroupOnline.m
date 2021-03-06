//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSubscribeFromGroupOnline.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/rpc/RequestSubscribeFromGroupOnline.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface APRequestSubscribeFromGroupOnline () {
 @public
  id<JavaUtilList> groups_;
}

@end

J2OBJC_FIELD_SETTER(APRequestSubscribeFromGroupOnline, groups_, id<JavaUtilList>)

@implementation APRequestSubscribeFromGroupOnline

+ (APRequestSubscribeFromGroupOnline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestSubscribeFromGroupOnline_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups {
  APRequestSubscribeFromGroupOnline_initWithJavaUtilList_(self, groups);
  return self;
}

- (instancetype)init {
  APRequestSubscribeFromGroupOnline_init(self);
  return self;
}

- (id<JavaUtilList>)getGroups {
  return self->groups_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _groups = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_groups addWithId:new_APGroupOutPeer_init()];
  }
  self->groups_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_groups];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->groups_];
}

- (NSString *)description {
  NSString *res = @"rpc SubscribeFromGroupOnline{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groups=", [((id<JavaUtilList>) nil_chk(self->groups_)) size]));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestSubscribeFromGroupOnline_HEADER;
}

@end

APRequestSubscribeFromGroupOnline *APRequestSubscribeFromGroupOnline_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestSubscribeFromGroupOnline_initialize();
  return ((APRequestSubscribeFromGroupOnline *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestSubscribeFromGroupOnline_init(), data));
}

void APRequestSubscribeFromGroupOnline_initWithJavaUtilList_(APRequestSubscribeFromGroupOnline *self, id<JavaUtilList> groups) {
  (void) APRequest_init(self);
  self->groups_ = groups;
}

APRequestSubscribeFromGroupOnline *new_APRequestSubscribeFromGroupOnline_initWithJavaUtilList_(id<JavaUtilList> groups) {
  APRequestSubscribeFromGroupOnline *self = [APRequestSubscribeFromGroupOnline alloc];
  APRequestSubscribeFromGroupOnline_initWithJavaUtilList_(self, groups);
  return self;
}

void APRequestSubscribeFromGroupOnline_init(APRequestSubscribeFromGroupOnline *self) {
  (void) APRequest_init(self);
}

APRequestSubscribeFromGroupOnline *new_APRequestSubscribeFromGroupOnline_init() {
  APRequestSubscribeFromGroupOnline *self = [APRequestSubscribeFromGroupOnline alloc];
  APRequestSubscribeFromGroupOnline_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestSubscribeFromGroupOnline)
