//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/state/ListsStatesActor.java
//

#ifndef _ImActorModelModulesStateListsStatesActor_H_
#define _ImActorModelModulesStateListsStatesActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@class APAppCounters;
@class ImActorModelModulesModules;

@interface ImActorModelModulesStateListsStatesActor : ImActorModelModulesUtilsModuleActor

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)onBookImported;

- (void)onContactsChangedWithBoolean:(jboolean)isEmpty;

- (void)onContactsLoaded;

- (void)onCounterChangedWithAPAppCounters:(APAppCounters *)counters;

- (void)onDialogsChangedWithBoolean:(jboolean)isEmpty;

- (void)onDialogsLoaded;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor)

FOUNDATION_EXPORT void ImActorModelModulesStateListsStatesActor_initWithImActorModelModulesModules_(ImActorModelModulesStateListsStatesActor *self, ImActorModelModulesModules *modules);

FOUNDATION_EXPORT ImActorModelModulesStateListsStatesActor *new_ImActorModelModulesStateListsStatesActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor)

@interface ImActorModelModulesStateListsStatesActor_OnAppCounterChanged : NSObject

#pragma mark Public

- (instancetype)initWithAPAppCounters:(APAppCounters *)counters;

- (APAppCounters *)getCounters;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor_OnAppCounterChanged)

FOUNDATION_EXPORT void ImActorModelModulesStateListsStatesActor_OnAppCounterChanged_initWithAPAppCounters_(ImActorModelModulesStateListsStatesActor_OnAppCounterChanged *self, APAppCounters *counters);

FOUNDATION_EXPORT ImActorModelModulesStateListsStatesActor_OnAppCounterChanged *new_ImActorModelModulesStateListsStatesActor_OnAppCounterChanged_initWithAPAppCounters_(APAppCounters *counters) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor_OnAppCounterChanged)

@interface ImActorModelModulesStateListsStatesActor_OnBookImported : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor_OnBookImported)

FOUNDATION_EXPORT void ImActorModelModulesStateListsStatesActor_OnBookImported_init(ImActorModelModulesStateListsStatesActor_OnBookImported *self);

FOUNDATION_EXPORT ImActorModelModulesStateListsStatesActor_OnBookImported *new_ImActorModelModulesStateListsStatesActor_OnBookImported_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor_OnBookImported)

@interface ImActorModelModulesStateListsStatesActor_OnContactsLoaded : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor_OnContactsLoaded)

FOUNDATION_EXPORT void ImActorModelModulesStateListsStatesActor_OnContactsLoaded_init(ImActorModelModulesStateListsStatesActor_OnContactsLoaded *self);

FOUNDATION_EXPORT ImActorModelModulesStateListsStatesActor_OnContactsLoaded *new_ImActorModelModulesStateListsStatesActor_OnContactsLoaded_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor_OnContactsLoaded)

@interface ImActorModelModulesStateListsStatesActor_OnDialogsLoaded : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor_OnDialogsLoaded)

FOUNDATION_EXPORT void ImActorModelModulesStateListsStatesActor_OnDialogsLoaded_init(ImActorModelModulesStateListsStatesActor_OnDialogsLoaded *self);

FOUNDATION_EXPORT ImActorModelModulesStateListsStatesActor_OnDialogsLoaded *new_ImActorModelModulesStateListsStatesActor_OnDialogsLoaded_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor_OnDialogsLoaded)

@interface ImActorModelModulesStateListsStatesActor_OnContactsChanged : NSObject

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)isEmpty;

- (jboolean)isEmpty;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor_OnContactsChanged)

FOUNDATION_EXPORT void ImActorModelModulesStateListsStatesActor_OnContactsChanged_initWithBoolean_(ImActorModelModulesStateListsStatesActor_OnContactsChanged *self, jboolean isEmpty);

FOUNDATION_EXPORT ImActorModelModulesStateListsStatesActor_OnContactsChanged *new_ImActorModelModulesStateListsStatesActor_OnContactsChanged_initWithBoolean_(jboolean isEmpty) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor_OnContactsChanged)

@interface ImActorModelModulesStateListsStatesActor_OnDialogsChanged : NSObject

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)isEmpty;

- (jboolean)isEmpty;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor_OnDialogsChanged)

FOUNDATION_EXPORT void ImActorModelModulesStateListsStatesActor_OnDialogsChanged_initWithBoolean_(ImActorModelModulesStateListsStatesActor_OnDialogsChanged *self, jboolean isEmpty);

FOUNDATION_EXPORT ImActorModelModulesStateListsStatesActor_OnDialogsChanged *new_ImActorModelModulesStateListsStatesActor_OnDialogsChanged_initWithBoolean_(jboolean isEmpty) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor_OnDialogsChanged)

#endif // _ImActorModelModulesStateListsStatesActor_H_
