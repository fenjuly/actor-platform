//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/RSAKeyGenerationParameters.java
//

#ifndef _OrgBouncycastleCryptoParamsRSAKeyGenerationParameters_H_
#define _OrgBouncycastleCryptoParamsRSAKeyGenerationParameters_H_

@class JavaMathBigInteger;
@class JavaSecuritySecureRandom;

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/KeyGenerationParameters.h"

@interface OrgBouncycastleCryptoParamsRSAKeyGenerationParameters : OrgBouncycastleCryptoKeyGenerationParameters {
}

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)publicExponent
              withJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random
                                   withInt:(jint)strength
                                   withInt:(jint)certainty;

- (JavaMathBigInteger *)getPublicExponent;

- (jint)getCertainty;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsRSAKeyGenerationParameters)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsRSAKeyGenerationParameters)

#endif // _OrgBouncycastleCryptoParamsRSAKeyGenerationParameters_H_