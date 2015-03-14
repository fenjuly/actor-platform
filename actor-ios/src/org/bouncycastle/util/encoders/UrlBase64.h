//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/util/encoders/UrlBase64.java
//

#ifndef _OrgBouncycastleUtilEncodersUrlBase64_H_
#define _OrgBouncycastleUtilEncodersUrlBase64_H_

@class IOSByteArray;
@class JavaIoOutputStream;
@protocol OrgBouncycastleUtilEncodersEncoder;

#include "J2ObjC_header.h"

@interface OrgBouncycastleUtilEncodersUrlBase64 : NSObject {
}

+ (IOSByteArray *)encodeWithByteArray:(IOSByteArray *)data;

+ (jint)encodeWithByteArray:(IOSByteArray *)data
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

+ (IOSByteArray *)decodeWithByteArray:(IOSByteArray *)data;

+ (jint)decodeWithByteArray:(IOSByteArray *)data
     withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

+ (IOSByteArray *)decodeWithNSString:(NSString *)data;

+ (jint)decodeWithNSString:(NSString *)data
    withJavaIoOutputStream:(JavaIoOutputStream *)outArg;

- (instancetype)init;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleUtilEncodersUrlBase64_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleUtilEncodersUrlBase64)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersUrlBase64_encodeWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersUrlBase64_encodeWithByteArray_withJavaIoOutputStream_(IOSByteArray *data, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersUrlBase64_decodeWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersUrlBase64_decodeWithByteArray_withJavaIoOutputStream_(IOSByteArray *data, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilEncodersUrlBase64_decodeWithNSString_(NSString *data);

FOUNDATION_EXPORT jint OrgBouncycastleUtilEncodersUrlBase64_decodeWithNSString_withJavaIoOutputStream_(NSString *data, JavaIoOutputStream *outArg);

FOUNDATION_EXPORT id<OrgBouncycastleUtilEncodersEncoder> OrgBouncycastleUtilEncodersUrlBase64_encoder_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleUtilEncodersUrlBase64, encoder_, id<OrgBouncycastleUtilEncodersEncoder>)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilEncodersUrlBase64)

#endif // _OrgBouncycastleUtilEncodersUrlBase64_H_