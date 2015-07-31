//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestStartEmailAuth.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestStartEmailAuth.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestStartEmailAuth () {
 @public
  NSString *email_;
  jint appId_;
  NSString *apiKey_;
  IOSByteArray *deviceHash_;
  NSString *deviceTitle_;
}

@end

J2OBJC_FIELD_SETTER(APRequestStartEmailAuth, email_, NSString *)
J2OBJC_FIELD_SETTER(APRequestStartEmailAuth, apiKey_, NSString *)
J2OBJC_FIELD_SETTER(APRequestStartEmailAuth, deviceHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(APRequestStartEmailAuth, deviceTitle_, NSString *)

@implementation APRequestStartEmailAuth

+ (APRequestStartEmailAuth *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestStartEmailAuth_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)email
                         withInt:(jint)appId
                    withNSString:(NSString *)apiKey
                   withByteArray:(IOSByteArray *)deviceHash
                    withNSString:(NSString *)deviceTitle {
  APRequestStartEmailAuth_initWithNSString_withInt_withNSString_withByteArray_withNSString_(self, email, appId, apiKey, deviceHash, deviceTitle);
  return self;
}

- (instancetype)init {
  APRequestStartEmailAuth_init(self);
  return self;
}

- (NSString *)getEmail {
  return self->email_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getApiKey {
  return self->apiKey_;
}

- (IOSByteArray *)getDeviceHash {
  return self->deviceHash_;
}

- (NSString *)getDeviceTitle {
  return self->deviceTitle_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->email_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->appId_ = [values getIntWithInt:2];
  self->apiKey_ = [values getStringWithInt:3];
  self->deviceHash_ = [values getBytesWithInt:4];
  self->deviceTitle_ = [values getStringWithInt:5];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->email_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->email_];
  [writer writeIntWithInt:2 withInt:self->appId_];
  if (self->apiKey_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->apiKey_];
  if (self->deviceHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:4 withByteArray:self->deviceHash_];
  if (self->deviceTitle_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:5 withNSString:self->deviceTitle_];
}

- (NSString *)description {
  NSString *res = @"rpc StartEmailAuth{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"email=", self->email_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestStartEmailAuth_HEADER;
}

@end

APRequestStartEmailAuth *APRequestStartEmailAuth_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestStartEmailAuth_initialize();
  return ((APRequestStartEmailAuth *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestStartEmailAuth_init(), data));
}

void APRequestStartEmailAuth_initWithNSString_withInt_withNSString_withByteArray_withNSString_(APRequestStartEmailAuth *self, NSString *email, jint appId, NSString *apiKey, IOSByteArray *deviceHash, NSString *deviceTitle) {
  (void) APRequest_init(self);
  self->email_ = email;
  self->appId_ = appId;
  self->apiKey_ = apiKey;
  self->deviceHash_ = deviceHash;
  self->deviceTitle_ = deviceTitle;
}

APRequestStartEmailAuth *new_APRequestStartEmailAuth_initWithNSString_withInt_withNSString_withByteArray_withNSString_(NSString *email, jint appId, NSString *apiKey, IOSByteArray *deviceHash, NSString *deviceTitle) {
  APRequestStartEmailAuth *self = [APRequestStartEmailAuth alloc];
  APRequestStartEmailAuth_initWithNSString_withInt_withNSString_withByteArray_withNSString_(self, email, appId, apiKey, deviceHash, deviceTitle);
  return self;
}

void APRequestStartEmailAuth_init(APRequestStartEmailAuth *self) {
  (void) APRequest_init(self);
}

APRequestStartEmailAuth *new_APRequestStartEmailAuth_init() {
  APRequestStartEmailAuth *self = [APRequestStartEmailAuth alloc];
  APRequestStartEmailAuth_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestStartEmailAuth)