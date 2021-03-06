//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestEditParameter.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestEditParameter.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestEditParameter () {
 @public
  NSString *key_;
  NSString *value_;
}

@end

J2OBJC_FIELD_SETTER(APRequestEditParameter, key_, NSString *)
J2OBJC_FIELD_SETTER(APRequestEditParameter, value_, NSString *)

@implementation APRequestEditParameter

+ (APRequestEditParameter *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestEditParameter_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value {
  APRequestEditParameter_initWithNSString_withNSString_(self, key, value);
  return self;
}

- (instancetype)init {
  APRequestEditParameter_init(self);
  return self;
}

- (NSString *)getKey {
  return self->key_;
}

- (NSString *)getValue {
  return self->value_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->key_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->value_ = [values getStringWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->key_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->key_];
  if (self->value_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->value_];
}

- (NSString *)description {
  NSString *res = @"rpc EditParameter{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"key=", self->key_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", value=", self->value_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestEditParameter_HEADER;
}

@end

APRequestEditParameter *APRequestEditParameter_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestEditParameter_initialize();
  return ((APRequestEditParameter *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestEditParameter_init(), data));
}

void APRequestEditParameter_initWithNSString_withNSString_(APRequestEditParameter *self, NSString *key, NSString *value) {
  (void) APRequest_init(self);
  self->key_ = key;
  self->value_ = value;
}

APRequestEditParameter *new_APRequestEditParameter_initWithNSString_withNSString_(NSString *key, NSString *value) {
  APRequestEditParameter *self = [APRequestEditParameter alloc];
  APRequestEditParameter_initWithNSString_withNSString_(self, key, value);
  return self;
}

void APRequestEditParameter_init(APRequestEditParameter *self) {
  (void) APRequest_init(self);
}

APRequestEditParameter *new_APRequestEditParameter_init() {
  APRequestEditParameter *self = [APRequestEditParameter alloc];
  APRequestEditParameter_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestEditParameter)
