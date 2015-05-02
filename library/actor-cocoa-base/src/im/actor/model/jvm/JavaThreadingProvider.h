//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/JavaThreadingProvider.java
//

#ifndef _AMJavaThreadingProvider_H_
#define _AMJavaThreadingProvider_H_

#include "J2ObjC_header.h"
#include "im/actor/model/ThreadingProvider.h"

@class AMAtomicIntegerCompat;
@class AMAtomicLongCompat;
@class AMThreadLocalCompat;
@class DKActorDispatcher;
@class DKActorSystem;
@class DKThreadPriorityEnum;

@interface AMJavaThreadingProvider : NSObject < AMThreadingProvider >

#pragma mark Public

- (instancetype)init;

- (AMAtomicIntegerCompat *)createAtomicIntWithInt:(jint)value;

- (AMAtomicLongCompat *)createAtomicLongWithLong:(jlong)value;

- (DKActorDispatcher *)createDefaultDispatcherWithNSString:(NSString *)name
                                  withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                         withDKActorSystem:(DKActorSystem *)actorSystem;

- (DKActorDispatcher *)createDispatcherWithNSString:(NSString *)name
                                            withInt:(jint)threadsCount
                           withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
                                  withDKActorSystem:(DKActorSystem *)actorSystem;

- (AMThreadLocalCompat *)createThreadLocal;

- (jlong)getActorTime;

- (jint)getCoresCount;

- (jlong)getCurrentTime;

- (jlong)getSyncedCurrentTime;

@end

J2OBJC_EMPTY_STATIC_INIT(AMJavaThreadingProvider)

FOUNDATION_EXPORT void AMJavaThreadingProvider_init(AMJavaThreadingProvider *self);

FOUNDATION_EXPORT AMJavaThreadingProvider *new_AMJavaThreadingProvider_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMJavaThreadingProvider)

typedef AMJavaThreadingProvider ImActorModelJvmJavaThreadingProvider;

#endif // _AMJavaThreadingProvider_H_