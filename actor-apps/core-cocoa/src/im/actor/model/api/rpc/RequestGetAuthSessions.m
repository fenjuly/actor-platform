//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestGetAuthSessions.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestGetAuthSessions.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@implementation APRequestGetAuthSessions

+ (APRequestGetAuthSessions *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestGetAuthSessions_fromBytesWithByteArray_(data);
}

- (instancetype)init {
  APRequestGetAuthSessions_init(self);
  return self;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
}

- (NSString *)description {
  NSString *res = @"rpc GetAuthSessions{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestGetAuthSessions_HEADER;
}

@end

APRequestGetAuthSessions *APRequestGetAuthSessions_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestGetAuthSessions_initialize();
  return ((APRequestGetAuthSessions *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestGetAuthSessions_init(), data));
}

void APRequestGetAuthSessions_init(APRequestGetAuthSessions *self) {
  (void) APRequest_init(self);
}

APRequestGetAuthSessions *new_APRequestGetAuthSessions_init() {
  APRequestGetAuthSessions *self = [APRequestGetAuthSessions alloc];
  APRequestGetAuthSessions_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestGetAuthSessions)
