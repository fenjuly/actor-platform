//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestNotifyBannerClick.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestNotifyBannerClick.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestNotifyBannerClick () {
 @public
  jint bannerId_;
}

@end

@implementation APRequestNotifyBannerClick

+ (APRequestNotifyBannerClick *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestNotifyBannerClick_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)bannerId {
  APRequestNotifyBannerClick_initWithInt_(self, bannerId);
  return self;
}

- (instancetype)init {
  APRequestNotifyBannerClick_init(self);
  return self;
}

- (jint)getBannerId {
  return self->bannerId_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->bannerId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->bannerId_];
}

- (NSString *)description {
  NSString *res = @"rpc NotifyBannerClick{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestNotifyBannerClick_HEADER;
}

@end

APRequestNotifyBannerClick *APRequestNotifyBannerClick_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestNotifyBannerClick_initialize();
  return ((APRequestNotifyBannerClick *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestNotifyBannerClick_init(), data));
}

void APRequestNotifyBannerClick_initWithInt_(APRequestNotifyBannerClick *self, jint bannerId) {
  (void) APRequest_init(self);
  self->bannerId_ = bannerId;
}

APRequestNotifyBannerClick *new_APRequestNotifyBannerClick_initWithInt_(jint bannerId) {
  APRequestNotifyBannerClick *self = [APRequestNotifyBannerClick alloc];
  APRequestNotifyBannerClick_initWithInt_(self, bannerId);
  return self;
}

void APRequestNotifyBannerClick_init(APRequestNotifyBannerClick *self) {
  (void) APRequest_init(self);
}

APRequestNotifyBannerClick *new_APRequestNotifyBannerClick_init() {
  APRequestNotifyBannerClick *self = [APRequestNotifyBannerClick alloc];
  APRequestNotifyBannerClick_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestNotifyBannerClick)
