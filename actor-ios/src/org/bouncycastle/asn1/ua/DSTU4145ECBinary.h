//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/ua/DSTU4145ECBinary.java
//

#ifndef _OrgBouncycastleAsn1UaDSTU4145ECBinary_H_
#define _OrgBouncycastleAsn1UaDSTU4145ECBinary_H_

@class IOSByteArray;
@class JavaMathBigInteger;
@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1ASN1OctetString;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1UaDSTU4145BinaryField;
@class OrgBouncycastleCryptoParamsECDomainParameters;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1UaDSTU4145ECBinary : OrgBouncycastleAsn1ASN1Object {
 @public
  JavaMathBigInteger *version__;
  OrgBouncycastleAsn1UaDSTU4145BinaryField *f_;
  OrgBouncycastleAsn1ASN1Integer *a_;
  OrgBouncycastleAsn1ASN1OctetString *b_;
  OrgBouncycastleAsn1ASN1Integer *n_;
  OrgBouncycastleAsn1ASN1OctetString *bp_;
}

- (instancetype)initWithOrgBouncycastleCryptoParamsECDomainParameters:(OrgBouncycastleCryptoParamsECDomainParameters *)params;

+ (OrgBouncycastleAsn1UaDSTU4145ECBinary *)getInstanceWithId:(id)obj;

- (OrgBouncycastleAsn1UaDSTU4145BinaryField *)getField;

- (JavaMathBigInteger *)getA;

- (IOSByteArray *)getB;

- (JavaMathBigInteger *)getN;

- (IOSByteArray *)getG;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1UaDSTU4145ECBinary)

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1UaDSTU4145ECBinary, version__, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1UaDSTU4145ECBinary, f_, OrgBouncycastleAsn1UaDSTU4145BinaryField *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1UaDSTU4145ECBinary, a_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1UaDSTU4145ECBinary, b_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1UaDSTU4145ECBinary, n_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1UaDSTU4145ECBinary, bp_, OrgBouncycastleAsn1ASN1OctetString *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1UaDSTU4145ECBinary *OrgBouncycastleAsn1UaDSTU4145ECBinary_getInstanceWithId_(id obj);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1UaDSTU4145ECBinary)

#endif // _OrgBouncycastleAsn1UaDSTU4145ECBinary_H_