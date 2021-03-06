//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseSeqDate.java
//

#ifndef _APResponseSeqDate_H_
#define _APResponseSeqDate_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Response.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APResponseSeqDate_HEADER 102

@interface APResponseSeqDate : APResponse

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
                   withLong:(jlong)date;

+ (APResponseSeqDate *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getHeaderKey;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APResponseSeqDate)

J2OBJC_STATIC_FIELD_GETTER(APResponseSeqDate, HEADER, jint)

FOUNDATION_EXPORT APResponseSeqDate *APResponseSeqDate_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APResponseSeqDate_initWithInt_withByteArray_withLong_(APResponseSeqDate *self, jint seq, IOSByteArray *state, jlong date);

FOUNDATION_EXPORT APResponseSeqDate *new_APResponseSeqDate_initWithInt_withByteArray_withLong_(jint seq, IOSByteArray *state, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APResponseSeqDate_init(APResponseSeqDate *self);

FOUNDATION_EXPORT APResponseSeqDate *new_APResponseSeqDate_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APResponseSeqDate)

typedef APResponseSeqDate ImActorModelApiRpcResponseSeqDate;

#endif // _APResponseSeqDate_H_
