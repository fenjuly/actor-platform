//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/KeyGenerationParameters.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/crypto/bouncycastle/RandomProvider.h"
#include "org/bouncycastle/crypto/KeyGenerationParameters.h"

@interface OrgBouncycastleCryptoKeyGenerationParameters () {
 @public
  id<BCRandomProvider> random_;
  jint strength_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoKeyGenerationParameters, random_, id<BCRandomProvider>)

@implementation OrgBouncycastleCryptoKeyGenerationParameters

- (instancetype)initWithBCRandomProvider:(id<BCRandomProvider>)random
                                 withInt:(jint)strength {
  OrgBouncycastleCryptoKeyGenerationParameters_initWithBCRandomProvider_withInt_(self, random, strength);
  return self;
}

- (id<BCRandomProvider>)getRandom {
  return random_;
}

- (jint)getStrength {
  return strength_;
}

@end

void OrgBouncycastleCryptoKeyGenerationParameters_initWithBCRandomProvider_withInt_(OrgBouncycastleCryptoKeyGenerationParameters *self, id<BCRandomProvider> random, jint strength) {
  (void) NSObject_init(self);
  self->random_ = random;
  self->strength_ = strength;
}

OrgBouncycastleCryptoKeyGenerationParameters *new_OrgBouncycastleCryptoKeyGenerationParameters_initWithBCRandomProvider_withInt_(id<BCRandomProvider> random, jint strength) {
  OrgBouncycastleCryptoKeyGenerationParameters *self = [OrgBouncycastleCryptoKeyGenerationParameters alloc];
  OrgBouncycastleCryptoKeyGenerationParameters_initWithBCRandomProvider_withInt_(self, random, strength);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoKeyGenerationParameters)
