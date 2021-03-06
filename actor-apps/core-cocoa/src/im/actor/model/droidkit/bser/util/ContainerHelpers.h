//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/droidkit/bser/util/ContainerHelpers.java
//

#ifndef _ImActorModelDroidkitBserUtilContainerHelpers_H_
#define _ImActorModelDroidkitBserUtilContainerHelpers_H_

#include "J2ObjC_header.h"

@class IOSBooleanArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;

@interface ImActorModelDroidkitBserUtilContainerHelpers : NSObject

#pragma mark Package-Private

- (instancetype)init;

+ (jint)binarySearchWithIntArray:(IOSIntArray *)array
                         withInt:(jint)size
                         withInt:(jint)value;

+ (jint)binarySearchWithLongArray:(IOSLongArray *)array
                          withInt:(jint)size
                         withLong:(jlong)value;

@end

J2OBJC_STATIC_INIT(ImActorModelDroidkitBserUtilContainerHelpers)

FOUNDATION_EXPORT IOSBooleanArray *ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_BOOLEANS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelDroidkitBserUtilContainerHelpers, EMPTY_BOOLEANS_, IOSBooleanArray *)

FOUNDATION_EXPORT IOSIntArray *ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_INTS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelDroidkitBserUtilContainerHelpers, EMPTY_INTS_, IOSIntArray *)

FOUNDATION_EXPORT IOSLongArray *ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_LONGS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelDroidkitBserUtilContainerHelpers, EMPTY_LONGS_, IOSLongArray *)

FOUNDATION_EXPORT IOSObjectArray *ImActorModelDroidkitBserUtilContainerHelpers_EMPTY_OBJECTS_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelDroidkitBserUtilContainerHelpers, EMPTY_OBJECTS_, IOSObjectArray *)

FOUNDATION_EXPORT jint ImActorModelDroidkitBserUtilContainerHelpers_binarySearchWithIntArray_withInt_withInt_(IOSIntArray *array, jint size, jint value);

FOUNDATION_EXPORT jint ImActorModelDroidkitBserUtilContainerHelpers_binarySearchWithLongArray_withInt_withLong_(IOSLongArray *array, jint size, jlong value);

FOUNDATION_EXPORT void ImActorModelDroidkitBserUtilContainerHelpers_init(ImActorModelDroidkitBserUtilContainerHelpers *self);

FOUNDATION_EXPORT ImActorModelDroidkitBserUtilContainerHelpers *new_ImActorModelDroidkitBserUtilContainerHelpers_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelDroidkitBserUtilContainerHelpers)

#endif // _ImActorModelDroidkitBserUtilContainerHelpers_H_
