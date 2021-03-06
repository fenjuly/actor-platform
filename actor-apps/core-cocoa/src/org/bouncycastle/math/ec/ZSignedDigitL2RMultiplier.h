//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/ec/ZSignedDigitL2RMultiplier.java
//

#ifndef _OrgBouncycastleMathEcZSignedDigitL2RMultiplier_H_
#define _OrgBouncycastleMathEcZSignedDigitL2RMultiplier_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/math/ec/AbstractECMultiplier.h"

@class JavaMathBigInteger;
@class OrgBouncycastleMathEcECPoint;

@interface OrgBouncycastleMathEcZSignedDigitL2RMultiplier : OrgBouncycastleMathEcAbstractECMultiplier

#pragma mark Public

- (instancetype)init;

#pragma mark Protected

- (OrgBouncycastleMathEcECPoint *)multiplyPositiveWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                            withJavaMathBigInteger:(JavaMathBigInteger *)k;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleMathEcZSignedDigitL2RMultiplier)

FOUNDATION_EXPORT void OrgBouncycastleMathEcZSignedDigitL2RMultiplier_init(OrgBouncycastleMathEcZSignedDigitL2RMultiplier *self);

FOUNDATION_EXPORT OrgBouncycastleMathEcZSignedDigitL2RMultiplier *new_OrgBouncycastleMathEcZSignedDigitL2RMultiplier_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcZSignedDigitL2RMultiplier)

#endif // _OrgBouncycastleMathEcZSignedDigitL2RMultiplier_H_
