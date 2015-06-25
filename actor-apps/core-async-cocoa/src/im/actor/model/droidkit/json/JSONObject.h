//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/library/core/src/main/java/im/actor/model/droidkit/json/JSONObject.java
//

#ifndef _ImActorModelDroidkitJsonJSONObject_H_
#define _ImActorModelDroidkitJsonJSONObject_H_

#include "J2ObjC_header.h"

@class IOSObjectArray;
@class ImActorModelDroidkitJsonJSONArray;
@class ImActorModelDroidkitJsonJSONTokener;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

@interface ImActorModelDroidkitJsonJSONObject : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithImActorModelDroidkitJsonJSONObject:(ImActorModelDroidkitJsonJSONObject *)jo
                                         withNSStringArray:(IOSObjectArray *)names;

- (instancetype)initWithImActorModelDroidkitJsonJSONTokener:(ImActorModelDroidkitJsonJSONTokener *)x;

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)map;

- (instancetype)initWithNSString:(NSString *)source;

- (ImActorModelDroidkitJsonJSONObject *)accumulateWithNSString:(NSString *)key
                                                        withId:(id)value;

- (ImActorModelDroidkitJsonJSONObject *)appendWithNSString:(NSString *)key
                                                    withId:(id)value;

+ (NSString *)doubleToStringWithDouble:(jdouble)d;

- (id)getWithNSString:(NSString *)key;

- (jboolean)getBooleanWithNSString:(NSString *)key;

- (jdouble)getDoubleWithNSString:(NSString *)key;

- (jint)getIntWithNSString:(NSString *)key;

- (ImActorModelDroidkitJsonJSONArray *)getJSONArrayWithNSString:(NSString *)key;

- (ImActorModelDroidkitJsonJSONObject *)getJSONObjectWithNSString:(NSString *)key;

- (jlong)getLongWithNSString:(NSString *)key;

+ (IOSObjectArray *)getNamesWithImActorModelDroidkitJsonJSONObject:(ImActorModelDroidkitJsonJSONObject *)jo;

- (NSString *)getStringWithNSString:(NSString *)key;

- (jboolean)hasWithNSString:(NSString *)key;

- (ImActorModelDroidkitJsonJSONObject *)incrementWithNSString:(NSString *)key;

- (jboolean)isNullWithNSString:(NSString *)key;

- (id<JavaUtilIterator>)keys;

- (id<JavaUtilSet>)keySet;

- (jint)length;

- (ImActorModelDroidkitJsonJSONArray *)names;

+ (NSString *)numberToStringWithNSNumber:(NSNumber *)number;

- (id)optWithNSString:(NSString *)key;

- (jboolean)optBooleanWithNSString:(NSString *)key;

- (jboolean)optBooleanWithNSString:(NSString *)key
                       withBoolean:(jboolean)defaultValue;

- (jdouble)optDoubleWithNSString:(NSString *)key;

- (jdouble)optDoubleWithNSString:(NSString *)key
                      withDouble:(jdouble)defaultValue;

- (jint)optIntWithNSString:(NSString *)key;

- (jint)optIntWithNSString:(NSString *)key
                   withInt:(jint)defaultValue;

- (ImActorModelDroidkitJsonJSONArray *)optJSONArrayWithNSString:(NSString *)key;

- (ImActorModelDroidkitJsonJSONObject *)optJSONObjectWithNSString:(NSString *)key;

- (jlong)optLongWithNSString:(NSString *)key;

- (jlong)optLongWithNSString:(NSString *)key
                    withLong:(jlong)defaultValue;

- (NSString *)optStringWithNSString:(NSString *)key;

- (NSString *)optStringWithNSString:(NSString *)key
                       withNSString:(NSString *)defaultValue;

- (ImActorModelDroidkitJsonJSONObject *)putWithNSString:(NSString *)key
                                            withBoolean:(jboolean)value;

- (ImActorModelDroidkitJsonJSONObject *)putWithNSString:(NSString *)key
                                 withJavaUtilCollection:(id<JavaUtilCollection>)value;

- (ImActorModelDroidkitJsonJSONObject *)putWithNSString:(NSString *)key
                                             withDouble:(jdouble)value;

- (ImActorModelDroidkitJsonJSONObject *)putWithNSString:(NSString *)key
                                                withInt:(jint)value;

- (ImActorModelDroidkitJsonJSONObject *)putWithNSString:(NSString *)key
                                               withLong:(jlong)value;

- (ImActorModelDroidkitJsonJSONObject *)putWithNSString:(NSString *)key
                                        withJavaUtilMap:(id<JavaUtilMap>)value;

- (ImActorModelDroidkitJsonJSONObject *)putWithNSString:(NSString *)key
                                                 withId:(id)value;

- (ImActorModelDroidkitJsonJSONObject *)putOnceWithNSString:(NSString *)key
                                                     withId:(id)value;

- (ImActorModelDroidkitJsonJSONObject *)putOptWithNSString:(NSString *)key
                                                    withId:(id)value;

- (id)removeWithNSString:(NSString *)key;

- (jboolean)similarWithId:(id)other;

+ (id)stringToValueWithNSString:(NSString *)string;

+ (void)testValidityWithId:(id)o;

- (ImActorModelDroidkitJsonJSONArray *)toJSONArrayWithImActorModelDroidkitJsonJSONArray:(ImActorModelDroidkitJsonJSONArray *)names;

@end

J2OBJC_STATIC_INIT(ImActorModelDroidkitJsonJSONObject)

FOUNDATION_EXPORT id ImActorModelDroidkitJsonJSONObject_NULL__;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelDroidkitJsonJSONObject, NULL__, id)

FOUNDATION_EXPORT void ImActorModelDroidkitJsonJSONObject_init(ImActorModelDroidkitJsonJSONObject *self);

FOUNDATION_EXPORT ImActorModelDroidkitJsonJSONObject *new_ImActorModelDroidkitJsonJSONObject_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelDroidkitJsonJSONObject_initWithImActorModelDroidkitJsonJSONObject_withNSStringArray_(ImActorModelDroidkitJsonJSONObject *self, ImActorModelDroidkitJsonJSONObject *jo, IOSObjectArray *names);

FOUNDATION_EXPORT ImActorModelDroidkitJsonJSONObject *new_ImActorModelDroidkitJsonJSONObject_initWithImActorModelDroidkitJsonJSONObject_withNSStringArray_(ImActorModelDroidkitJsonJSONObject *jo, IOSObjectArray *names) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelDroidkitJsonJSONObject_initWithImActorModelDroidkitJsonJSONTokener_(ImActorModelDroidkitJsonJSONObject *self, ImActorModelDroidkitJsonJSONTokener *x);

FOUNDATION_EXPORT ImActorModelDroidkitJsonJSONObject *new_ImActorModelDroidkitJsonJSONObject_initWithImActorModelDroidkitJsonJSONTokener_(ImActorModelDroidkitJsonJSONTokener *x) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelDroidkitJsonJSONObject_initWithJavaUtilMap_(ImActorModelDroidkitJsonJSONObject *self, id<JavaUtilMap> map);

FOUNDATION_EXPORT ImActorModelDroidkitJsonJSONObject *new_ImActorModelDroidkitJsonJSONObject_initWithJavaUtilMap_(id<JavaUtilMap> map) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelDroidkitJsonJSONObject_initWithNSString_(ImActorModelDroidkitJsonJSONObject *self, NSString *source);

FOUNDATION_EXPORT ImActorModelDroidkitJsonJSONObject *new_ImActorModelDroidkitJsonJSONObject_initWithNSString_(NSString *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NSString *ImActorModelDroidkitJsonJSONObject_doubleToStringWithDouble_(jdouble d);

FOUNDATION_EXPORT IOSObjectArray *ImActorModelDroidkitJsonJSONObject_getNamesWithImActorModelDroidkitJsonJSONObject_(ImActorModelDroidkitJsonJSONObject *jo);

FOUNDATION_EXPORT NSString *ImActorModelDroidkitJsonJSONObject_numberToStringWithNSNumber_(NSNumber *number);

FOUNDATION_EXPORT id ImActorModelDroidkitJsonJSONObject_stringToValueWithNSString_(NSString *string);

FOUNDATION_EXPORT void ImActorModelDroidkitJsonJSONObject_testValidityWithId_(id o);

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelDroidkitJsonJSONObject)

#endif // _ImActorModelDroidkitJsonJSONObject_H_