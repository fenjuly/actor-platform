//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/Digest.java
//

#ifndef _OrgBouncycastleCryptoDigest_H_
#define _OrgBouncycastleCryptoDigest_H_

#include "J2ObjC_header.h"

@class IOSByteArray;

@protocol OrgBouncycastleCryptoDigest < NSObject, JavaObject >

- (NSString *)getAlgorithmName;

- (jint)getDigestSize;

- (void)updateWithByte:(jbyte)inArg;

- (void)updateWithByteArray:(IOSByteArray *)inArg
                    withInt:(jint)inOff
                    withInt:(jint)len;

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoDigest)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoDigest)

#endif // _OrgBouncycastleCryptoDigest_H_
