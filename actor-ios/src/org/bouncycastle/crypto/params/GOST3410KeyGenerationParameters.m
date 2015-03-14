//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/GOST3410KeyGenerationParameters.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/security/SecureRandom.h"
#include "org/bouncycastle/crypto/params/GOST3410KeyGenerationParameters.h"
#include "org/bouncycastle/crypto/params/GOST3410Parameters.h"

@interface OrgBouncycastleCryptoParamsGOST3410KeyGenerationParameters () {
 @public
  OrgBouncycastleCryptoParamsGOST3410Parameters *params_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsGOST3410KeyGenerationParameters, params_, OrgBouncycastleCryptoParamsGOST3410Parameters *)

@implementation OrgBouncycastleCryptoParamsGOST3410KeyGenerationParameters

- (instancetype)initWithJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random
withOrgBouncycastleCryptoParamsGOST3410Parameters:(OrgBouncycastleCryptoParamsGOST3410Parameters *)params {
  if (self = [super initWithJavaSecuritySecureRandom:random withInt:[((JavaMathBigInteger *) nil_chk([((OrgBouncycastleCryptoParamsGOST3410Parameters *) nil_chk(params)) getP])) bitLength] - 1]) {
    self->params_ = params;
  }
  return self;
}

- (OrgBouncycastleCryptoParamsGOST3410Parameters *)getParameters {
  return params_;
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsGOST3410KeyGenerationParameters *)other {
  [super copyAllFieldsTo:other];
  other->params_ = params_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsGOST3410KeyGenerationParameters)