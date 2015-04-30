//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/contacts/BookImportActor.java
//

#ifndef _ImActorModelModulesContactsBookImportActor_H_
#define _ImActorModelModulesContactsBookImportActor_H_

@class AMRpcException;
@class IOSObjectArray;
@class ImActorModelApiRpcResponseImportContacts;
@class ImActorModelModulesModules;
@class JavaUtilArrayList;
@class JavaUtilHashSet;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/PhoneBookProvider.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/network/RpcCallback.h"

#define ImActorModelModulesContactsBookImportActor_MAX_IMPORT_SIZE 50

@interface ImActorModelModulesContactsBookImportActor : ImActorModelModulesUtilsModuleActor {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)preStart;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesContactsBookImportActor)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *ImActorModelModulesContactsBookImportActor_TAG_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesContactsBookImportActor, TAG_, NSString *)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesContactsBookImportActor, MAX_IMPORT_SIZE, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesContactsBookImportActor)

@interface ImActorModelModulesContactsBookImportActor_PerformSync : NSObject {
}

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesContactsBookImportActor_PerformSync)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesContactsBookImportActor_PerformSync)

@interface ImActorModelModulesContactsBookImportActor_PhoneBookLoaded : NSObject {
}

- (id<JavaUtilList>)getPhoneBook;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesContactsBookImportActor_PhoneBookLoaded)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesContactsBookImportActor_PhoneBookLoaded)

@interface ImActorModelModulesContactsBookImportActor_$1 : NSObject < AMPhoneBookProvider_Callback > {
}

- (void)onLoadedWithJavaUtilList:(id<JavaUtilList>)contacts;

- (instancetype)initWithImActorModelModulesContactsBookImportActor:(ImActorModelModulesContactsBookImportActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesContactsBookImportActor_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesContactsBookImportActor_$1)

@interface ImActorModelModulesContactsBookImportActor_$2 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseImportContacts *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesContactsBookImportActor:(ImActorModelModulesContactsBookImportActor *)outer$
                             withImActorModelApiPhoneToImportArray:(IOSObjectArray *)capture$0
                             withImActorModelApiEmailToImportArray:(IOSObjectArray *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesContactsBookImportActor_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesContactsBookImportActor_$2)

#endif // _ImActorModelModulesContactsBookImportActor_H_