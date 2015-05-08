//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/Security.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestGetAuthSessions.h"
#include "im/actor/model/api/rpc/RequestTerminateAllSessions.h"
#include "im/actor/model/api/rpc/RequestTerminateSession.h"
#include "im/actor/model/api/rpc/ResponseGetAuthSessions.h"
#include "im/actor/model/api/rpc/ResponseVoid.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/concurrency/CommandCallback.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Security.h"
#include "im/actor/model/network/RpcCallback.h"
#include "im/actor/model/network/RpcException.h"
#include "java/lang/Boolean.h"
#include "java/lang/Runnable.h"
#include "java/util/List.h"

@interface ImActorModelModulesSecurity_$1 : NSObject < AMCommand > {
 @public
  ImActorModelModulesSecurity *this$0_;
}

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback;

- (instancetype)initWithImActorModelModulesSecurity:(ImActorModelModulesSecurity *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$1, this$0_, ImActorModelModulesSecurity *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$1_initWithImActorModelModulesSecurity_(ImActorModelModulesSecurity_$1 *self, ImActorModelModulesSecurity *outer$);

__attribute__((unused)) static ImActorModelModulesSecurity_$1 *new_ImActorModelModulesSecurity_$1_initWithImActorModelModulesSecurity_(ImActorModelModulesSecurity *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$1)

@interface ImActorModelModulesSecurity_$1_$1 : NSObject < AMRpcCallback > {
 @public
  ImActorModelModulesSecurity_$1 *this$0_;
  id<AMCommandCallback> val$callback_;
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseGetAuthSessions *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesSecurity_$1:(ImActorModelModulesSecurity_$1 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$1_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$1_$1, this$0_, ImActorModelModulesSecurity_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$1_$1, val$callback_, id<AMCommandCallback>)

__attribute__((unused)) static void ImActorModelModulesSecurity_$1_$1_initWithImActorModelModulesSecurity_$1_withAMCommandCallback_(ImActorModelModulesSecurity_$1_$1 *self, ImActorModelModulesSecurity_$1 *outer$, id<AMCommandCallback> capture$0);

__attribute__((unused)) static ImActorModelModulesSecurity_$1_$1 *new_ImActorModelModulesSecurity_$1_$1_initWithImActorModelModulesSecurity_$1_withAMCommandCallback_(ImActorModelModulesSecurity_$1 *outer$, id<AMCommandCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$1_$1)

@interface ImActorModelModulesSecurity_$1_$1_$1 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesSecurity_$1_$1 *this$0_;
  ImActorModelApiRpcResponseGetAuthSessions *val$response_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesSecurity_$1_$1:(ImActorModelModulesSecurity_$1_$1 *)outer$
            withImActorModelApiRpcResponseGetAuthSessions:(ImActorModelApiRpcResponseGetAuthSessions *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$1_$1_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$1_$1_$1, this$0_, ImActorModelModulesSecurity_$1_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$1_$1_$1, val$response_, ImActorModelApiRpcResponseGetAuthSessions *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$1_$1_$1_initWithImActorModelModulesSecurity_$1_$1_withImActorModelApiRpcResponseGetAuthSessions_(ImActorModelModulesSecurity_$1_$1_$1 *self, ImActorModelModulesSecurity_$1_$1 *outer$, ImActorModelApiRpcResponseGetAuthSessions *capture$0);

__attribute__((unused)) static ImActorModelModulesSecurity_$1_$1_$1 *new_ImActorModelModulesSecurity_$1_$1_$1_initWithImActorModelModulesSecurity_$1_$1_withImActorModelApiRpcResponseGetAuthSessions_(ImActorModelModulesSecurity_$1_$1 *outer$, ImActorModelApiRpcResponseGetAuthSessions *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$1_$1_$1)

@interface ImActorModelModulesSecurity_$1_$1_$2 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesSecurity_$1_$1 *this$0_;
  AMRpcException *val$e_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesSecurity_$1_$1:(ImActorModelModulesSecurity_$1_$1 *)outer$
                                       withAMRpcException:(AMRpcException *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$1_$1_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$1_$1_$2, this$0_, ImActorModelModulesSecurity_$1_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$1_$1_$2, val$e_, AMRpcException *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$1_$1_$2_initWithImActorModelModulesSecurity_$1_$1_withAMRpcException_(ImActorModelModulesSecurity_$1_$1_$2 *self, ImActorModelModulesSecurity_$1_$1 *outer$, AMRpcException *capture$0);

__attribute__((unused)) static ImActorModelModulesSecurity_$1_$1_$2 *new_ImActorModelModulesSecurity_$1_$1_$2_initWithImActorModelModulesSecurity_$1_$1_withAMRpcException_(ImActorModelModulesSecurity_$1_$1 *outer$, AMRpcException *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$1_$1_$2)

@interface ImActorModelModulesSecurity_$2 : NSObject < AMCommand > {
 @public
  ImActorModelModulesSecurity *this$0_;
}

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback;

- (instancetype)initWithImActorModelModulesSecurity:(ImActorModelModulesSecurity *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$2, this$0_, ImActorModelModulesSecurity *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$2_initWithImActorModelModulesSecurity_(ImActorModelModulesSecurity_$2 *self, ImActorModelModulesSecurity *outer$);

__attribute__((unused)) static ImActorModelModulesSecurity_$2 *new_ImActorModelModulesSecurity_$2_initWithImActorModelModulesSecurity_(ImActorModelModulesSecurity *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$2)

@interface ImActorModelModulesSecurity_$2_$1 : NSObject < AMRpcCallback > {
 @public
  ImActorModelModulesSecurity_$2 *this$0_;
  id<AMCommandCallback> val$callback_;
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseVoid *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesSecurity_$2:(ImActorModelModulesSecurity_$2 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$2_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$2_$1, this$0_, ImActorModelModulesSecurity_$2 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$2_$1, val$callback_, id<AMCommandCallback>)

__attribute__((unused)) static void ImActorModelModulesSecurity_$2_$1_initWithImActorModelModulesSecurity_$2_withAMCommandCallback_(ImActorModelModulesSecurity_$2_$1 *self, ImActorModelModulesSecurity_$2 *outer$, id<AMCommandCallback> capture$0);

__attribute__((unused)) static ImActorModelModulesSecurity_$2_$1 *new_ImActorModelModulesSecurity_$2_$1_initWithImActorModelModulesSecurity_$2_withAMCommandCallback_(ImActorModelModulesSecurity_$2 *outer$, id<AMCommandCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$2_$1)

@interface ImActorModelModulesSecurity_$2_$1_$1 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesSecurity_$2_$1 *this$0_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesSecurity_$2_$1:(ImActorModelModulesSecurity_$2_$1 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$2_$1_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$2_$1_$1, this$0_, ImActorModelModulesSecurity_$2_$1 *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$2_$1_$1_initWithImActorModelModulesSecurity_$2_$1_(ImActorModelModulesSecurity_$2_$1_$1 *self, ImActorModelModulesSecurity_$2_$1 *outer$);

__attribute__((unused)) static ImActorModelModulesSecurity_$2_$1_$1 *new_ImActorModelModulesSecurity_$2_$1_$1_initWithImActorModelModulesSecurity_$2_$1_(ImActorModelModulesSecurity_$2_$1 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$2_$1_$1)

@interface ImActorModelModulesSecurity_$2_$1_$2 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesSecurity_$2_$1 *this$0_;
  AMRpcException *val$e_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesSecurity_$2_$1:(ImActorModelModulesSecurity_$2_$1 *)outer$
                                       withAMRpcException:(AMRpcException *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$2_$1_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$2_$1_$2, this$0_, ImActorModelModulesSecurity_$2_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$2_$1_$2, val$e_, AMRpcException *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$2_$1_$2_initWithImActorModelModulesSecurity_$2_$1_withAMRpcException_(ImActorModelModulesSecurity_$2_$1_$2 *self, ImActorModelModulesSecurity_$2_$1 *outer$, AMRpcException *capture$0);

__attribute__((unused)) static ImActorModelModulesSecurity_$2_$1_$2 *new_ImActorModelModulesSecurity_$2_$1_$2_initWithImActorModelModulesSecurity_$2_$1_withAMRpcException_(ImActorModelModulesSecurity_$2_$1 *outer$, AMRpcException *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$2_$1_$2)

@interface ImActorModelModulesSecurity_$3 : NSObject < AMCommand > {
 @public
  ImActorModelModulesSecurity *this$0_;
  jint val$id_;
}

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback;

- (instancetype)initWithImActorModelModulesSecurity:(ImActorModelModulesSecurity *)outer$
                                            withInt:(jint)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$3)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$3, this$0_, ImActorModelModulesSecurity *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$3_initWithImActorModelModulesSecurity_withInt_(ImActorModelModulesSecurity_$3 *self, ImActorModelModulesSecurity *outer$, jint capture$0);

__attribute__((unused)) static ImActorModelModulesSecurity_$3 *new_ImActorModelModulesSecurity_$3_initWithImActorModelModulesSecurity_withInt_(ImActorModelModulesSecurity *outer$, jint capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$3)

@interface ImActorModelModulesSecurity_$3_$1 : NSObject < AMRpcCallback > {
 @public
  ImActorModelModulesSecurity_$3 *this$0_;
  id<AMCommandCallback> val$callback_;
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseVoid *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesSecurity_$3:(ImActorModelModulesSecurity_$3 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$3_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$3_$1, this$0_, ImActorModelModulesSecurity_$3 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$3_$1, val$callback_, id<AMCommandCallback>)

__attribute__((unused)) static void ImActorModelModulesSecurity_$3_$1_initWithImActorModelModulesSecurity_$3_withAMCommandCallback_(ImActorModelModulesSecurity_$3_$1 *self, ImActorModelModulesSecurity_$3 *outer$, id<AMCommandCallback> capture$0);

__attribute__((unused)) static ImActorModelModulesSecurity_$3_$1 *new_ImActorModelModulesSecurity_$3_$1_initWithImActorModelModulesSecurity_$3_withAMCommandCallback_(ImActorModelModulesSecurity_$3 *outer$, id<AMCommandCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$3_$1)

@interface ImActorModelModulesSecurity_$3_$1_$1 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesSecurity_$3_$1 *this$0_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesSecurity_$3_$1:(ImActorModelModulesSecurity_$3_$1 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$3_$1_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$3_$1_$1, this$0_, ImActorModelModulesSecurity_$3_$1 *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$3_$1_$1_initWithImActorModelModulesSecurity_$3_$1_(ImActorModelModulesSecurity_$3_$1_$1 *self, ImActorModelModulesSecurity_$3_$1 *outer$);

__attribute__((unused)) static ImActorModelModulesSecurity_$3_$1_$1 *new_ImActorModelModulesSecurity_$3_$1_$1_initWithImActorModelModulesSecurity_$3_$1_(ImActorModelModulesSecurity_$3_$1 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$3_$1_$1)

@interface ImActorModelModulesSecurity_$3_$1_$2 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesSecurity_$3_$1 *this$0_;
  AMRpcException *val$e_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesSecurity_$3_$1:(ImActorModelModulesSecurity_$3_$1 *)outer$
                                       withAMRpcException:(AMRpcException *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSecurity_$3_$1_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$3_$1_$2, this$0_, ImActorModelModulesSecurity_$3_$1 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesSecurity_$3_$1_$2, val$e_, AMRpcException *)

__attribute__((unused)) static void ImActorModelModulesSecurity_$3_$1_$2_initWithImActorModelModulesSecurity_$3_$1_withAMRpcException_(ImActorModelModulesSecurity_$3_$1_$2 *self, ImActorModelModulesSecurity_$3_$1 *outer$, AMRpcException *capture$0);

__attribute__((unused)) static ImActorModelModulesSecurity_$3_$1_$2 *new_ImActorModelModulesSecurity_$3_$1_$2_initWithImActorModelModulesSecurity_$3_$1_withAMRpcException_(ImActorModelModulesSecurity_$3_$1 *outer$, AMRpcException *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSecurity_$3_$1_$2)

@implementation ImActorModelModulesSecurity

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesSecurity_initWithImActorModelModulesModules_(self, modules);
  return self;
}

- (id<AMCommand>)loadSessions {
  return new_ImActorModelModulesSecurity_$1_initWithImActorModelModulesSecurity_(self);
}

- (id<AMCommand>)terminateAllSessions {
  return new_ImActorModelModulesSecurity_$2_initWithImActorModelModulesSecurity_(self);
}

- (id<AMCommand>)terminateSessionWithInt:(jint)id_ {
  return new_ImActorModelModulesSecurity_$3_initWithImActorModelModulesSecurity_withInt_(self, id_);
}

@end

void ImActorModelModulesSecurity_initWithImActorModelModulesModules_(ImActorModelModulesSecurity *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
}

ImActorModelModulesSecurity *new_ImActorModelModulesSecurity_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesSecurity *self = [ImActorModelModulesSecurity alloc];
  ImActorModelModulesSecurity_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity)

@implementation ImActorModelModulesSecurity_$1

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  [this$0_ requestWithImActorModelNetworkParserRequest:new_ImActorModelApiRpcRequestGetAuthSessions_init() withAMRpcCallback:new_ImActorModelModulesSecurity_$1_$1_initWithImActorModelModulesSecurity_$1_withAMCommandCallback_(self, callback)];
}

- (instancetype)initWithImActorModelModulesSecurity:(ImActorModelModulesSecurity *)outer$ {
  ImActorModelModulesSecurity_$1_initWithImActorModelModulesSecurity_(self, outer$);
  return self;
}

@end

void ImActorModelModulesSecurity_$1_initWithImActorModelModulesSecurity_(ImActorModelModulesSecurity_$1 *self, ImActorModelModulesSecurity *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$1 *new_ImActorModelModulesSecurity_$1_initWithImActorModelModulesSecurity_(ImActorModelModulesSecurity *outer$) {
  ImActorModelModulesSecurity_$1 *self = [ImActorModelModulesSecurity_$1 alloc];
  ImActorModelModulesSecurity_$1_initWithImActorModelModulesSecurity_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$1)

@implementation ImActorModelModulesSecurity_$1_$1

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseGetAuthSessions *)response {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesSecurity_$1_$1_$1_initWithImActorModelModulesSecurity_$1_$1_withImActorModelApiRpcResponseGetAuthSessions_(self, response)];
}

- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesSecurity_$1_$1_$2_initWithImActorModelModulesSecurity_$1_$1_withAMRpcException_(self, e)];
}

- (instancetype)initWithImActorModelModulesSecurity_$1:(ImActorModelModulesSecurity_$1 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  ImActorModelModulesSecurity_$1_$1_initWithImActorModelModulesSecurity_$1_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesSecurity_$1_$1_initWithImActorModelModulesSecurity_$1_withAMCommandCallback_(ImActorModelModulesSecurity_$1_$1 *self, ImActorModelModulesSecurity_$1 *outer$, id<AMCommandCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$1_$1 *new_ImActorModelModulesSecurity_$1_$1_initWithImActorModelModulesSecurity_$1_withAMCommandCallback_(ImActorModelModulesSecurity_$1 *outer$, id<AMCommandCallback> capture$0) {
  ImActorModelModulesSecurity_$1_$1 *self = [ImActorModelModulesSecurity_$1_$1 alloc];
  ImActorModelModulesSecurity_$1_$1_initWithImActorModelModulesSecurity_$1_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$1_$1)

@implementation ImActorModelModulesSecurity_$1_$1_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:[((ImActorModelApiRpcResponseGetAuthSessions *) nil_chk(val$response_)) getUserAuths]];
}

- (instancetype)initWithImActorModelModulesSecurity_$1_$1:(ImActorModelModulesSecurity_$1_$1 *)outer$
            withImActorModelApiRpcResponseGetAuthSessions:(ImActorModelApiRpcResponseGetAuthSessions *)capture$0 {
  ImActorModelModulesSecurity_$1_$1_$1_initWithImActorModelModulesSecurity_$1_$1_withImActorModelApiRpcResponseGetAuthSessions_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesSecurity_$1_$1_$1_initWithImActorModelModulesSecurity_$1_$1_withImActorModelApiRpcResponseGetAuthSessions_(ImActorModelModulesSecurity_$1_$1_$1 *self, ImActorModelModulesSecurity_$1_$1 *outer$, ImActorModelApiRpcResponseGetAuthSessions *capture$0) {
  self->this$0_ = outer$;
  self->val$response_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$1_$1_$1 *new_ImActorModelModulesSecurity_$1_$1_$1_initWithImActorModelModulesSecurity_$1_$1_withImActorModelApiRpcResponseGetAuthSessions_(ImActorModelModulesSecurity_$1_$1 *outer$, ImActorModelApiRpcResponseGetAuthSessions *capture$0) {
  ImActorModelModulesSecurity_$1_$1_$1 *self = [ImActorModelModulesSecurity_$1_$1_$1 alloc];
  ImActorModelModulesSecurity_$1_$1_$1_initWithImActorModelModulesSecurity_$1_$1_withImActorModelApiRpcResponseGetAuthSessions_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$1_$1_$1)

@implementation ImActorModelModulesSecurity_$1_$1_$2

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:val$e_];
}

- (instancetype)initWithImActorModelModulesSecurity_$1_$1:(ImActorModelModulesSecurity_$1_$1 *)outer$
                                       withAMRpcException:(AMRpcException *)capture$0 {
  ImActorModelModulesSecurity_$1_$1_$2_initWithImActorModelModulesSecurity_$1_$1_withAMRpcException_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesSecurity_$1_$1_$2_initWithImActorModelModulesSecurity_$1_$1_withAMRpcException_(ImActorModelModulesSecurity_$1_$1_$2 *self, ImActorModelModulesSecurity_$1_$1 *outer$, AMRpcException *capture$0) {
  self->this$0_ = outer$;
  self->val$e_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$1_$1_$2 *new_ImActorModelModulesSecurity_$1_$1_$2_initWithImActorModelModulesSecurity_$1_$1_withAMRpcException_(ImActorModelModulesSecurity_$1_$1 *outer$, AMRpcException *capture$0) {
  ImActorModelModulesSecurity_$1_$1_$2 *self = [ImActorModelModulesSecurity_$1_$1_$2 alloc];
  ImActorModelModulesSecurity_$1_$1_$2_initWithImActorModelModulesSecurity_$1_$1_withAMRpcException_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$1_$1_$2)

@implementation ImActorModelModulesSecurity_$2

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  [this$0_ requestWithImActorModelNetworkParserRequest:new_ImActorModelApiRpcRequestTerminateAllSessions_init() withAMRpcCallback:new_ImActorModelModulesSecurity_$2_$1_initWithImActorModelModulesSecurity_$2_withAMCommandCallback_(self, callback)];
}

- (instancetype)initWithImActorModelModulesSecurity:(ImActorModelModulesSecurity *)outer$ {
  ImActorModelModulesSecurity_$2_initWithImActorModelModulesSecurity_(self, outer$);
  return self;
}

@end

void ImActorModelModulesSecurity_$2_initWithImActorModelModulesSecurity_(ImActorModelModulesSecurity_$2 *self, ImActorModelModulesSecurity *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$2 *new_ImActorModelModulesSecurity_$2_initWithImActorModelModulesSecurity_(ImActorModelModulesSecurity *outer$) {
  ImActorModelModulesSecurity_$2 *self = [ImActorModelModulesSecurity_$2 alloc];
  ImActorModelModulesSecurity_$2_initWithImActorModelModulesSecurity_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$2)

@implementation ImActorModelModulesSecurity_$2_$1

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseVoid *)response {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesSecurity_$2_$1_$1_initWithImActorModelModulesSecurity_$2_$1_(self)];
}

- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesSecurity_$2_$1_$2_initWithImActorModelModulesSecurity_$2_$1_withAMRpcException_(self, e)];
}

- (instancetype)initWithImActorModelModulesSecurity_$2:(ImActorModelModulesSecurity_$2 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  ImActorModelModulesSecurity_$2_$1_initWithImActorModelModulesSecurity_$2_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesSecurity_$2_$1_initWithImActorModelModulesSecurity_$2_withAMCommandCallback_(ImActorModelModulesSecurity_$2_$1 *self, ImActorModelModulesSecurity_$2 *outer$, id<AMCommandCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$2_$1 *new_ImActorModelModulesSecurity_$2_$1_initWithImActorModelModulesSecurity_$2_withAMCommandCallback_(ImActorModelModulesSecurity_$2 *outer$, id<AMCommandCallback> capture$0) {
  ImActorModelModulesSecurity_$2_$1 *self = [ImActorModelModulesSecurity_$2_$1 alloc];
  ImActorModelModulesSecurity_$2_$1_initWithImActorModelModulesSecurity_$2_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$2_$1)

@implementation ImActorModelModulesSecurity_$2_$1_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesSecurity_$2_$1:(ImActorModelModulesSecurity_$2_$1 *)outer$ {
  ImActorModelModulesSecurity_$2_$1_$1_initWithImActorModelModulesSecurity_$2_$1_(self, outer$);
  return self;
}

@end

void ImActorModelModulesSecurity_$2_$1_$1_initWithImActorModelModulesSecurity_$2_$1_(ImActorModelModulesSecurity_$2_$1_$1 *self, ImActorModelModulesSecurity_$2_$1 *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$2_$1_$1 *new_ImActorModelModulesSecurity_$2_$1_$1_initWithImActorModelModulesSecurity_$2_$1_(ImActorModelModulesSecurity_$2_$1 *outer$) {
  ImActorModelModulesSecurity_$2_$1_$1 *self = [ImActorModelModulesSecurity_$2_$1_$1 alloc];
  ImActorModelModulesSecurity_$2_$1_$1_initWithImActorModelModulesSecurity_$2_$1_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$2_$1_$1)

@implementation ImActorModelModulesSecurity_$2_$1_$2

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:val$e_];
}

- (instancetype)initWithImActorModelModulesSecurity_$2_$1:(ImActorModelModulesSecurity_$2_$1 *)outer$
                                       withAMRpcException:(AMRpcException *)capture$0 {
  ImActorModelModulesSecurity_$2_$1_$2_initWithImActorModelModulesSecurity_$2_$1_withAMRpcException_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesSecurity_$2_$1_$2_initWithImActorModelModulesSecurity_$2_$1_withAMRpcException_(ImActorModelModulesSecurity_$2_$1_$2 *self, ImActorModelModulesSecurity_$2_$1 *outer$, AMRpcException *capture$0) {
  self->this$0_ = outer$;
  self->val$e_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$2_$1_$2 *new_ImActorModelModulesSecurity_$2_$1_$2_initWithImActorModelModulesSecurity_$2_$1_withAMRpcException_(ImActorModelModulesSecurity_$2_$1 *outer$, AMRpcException *capture$0) {
  ImActorModelModulesSecurity_$2_$1_$2 *self = [ImActorModelModulesSecurity_$2_$1_$2 alloc];
  ImActorModelModulesSecurity_$2_$1_$2_initWithImActorModelModulesSecurity_$2_$1_withAMRpcException_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$2_$1_$2)

@implementation ImActorModelModulesSecurity_$3

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback {
  [this$0_ requestWithImActorModelNetworkParserRequest:new_ImActorModelApiRpcRequestTerminateSession_initWithInt_(val$id_) withAMRpcCallback:new_ImActorModelModulesSecurity_$3_$1_initWithImActorModelModulesSecurity_$3_withAMCommandCallback_(self, callback)];
}

- (instancetype)initWithImActorModelModulesSecurity:(ImActorModelModulesSecurity *)outer$
                                            withInt:(jint)capture$0 {
  ImActorModelModulesSecurity_$3_initWithImActorModelModulesSecurity_withInt_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesSecurity_$3_initWithImActorModelModulesSecurity_withInt_(ImActorModelModulesSecurity_$3 *self, ImActorModelModulesSecurity *outer$, jint capture$0) {
  self->this$0_ = outer$;
  self->val$id_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$3 *new_ImActorModelModulesSecurity_$3_initWithImActorModelModulesSecurity_withInt_(ImActorModelModulesSecurity *outer$, jint capture$0) {
  ImActorModelModulesSecurity_$3 *self = [ImActorModelModulesSecurity_$3 alloc];
  ImActorModelModulesSecurity_$3_initWithImActorModelModulesSecurity_withInt_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$3)

@implementation ImActorModelModulesSecurity_$3_$1

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseVoid *)response {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesSecurity_$3_$1_$1_initWithImActorModelModulesSecurity_$3_$1_(self)];
}

- (void)onErrorWithAMRpcException:(AMRpcException *)e {
  [this$0_->this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesSecurity_$3_$1_$2_initWithImActorModelModulesSecurity_$3_$1_withAMRpcException_(self, e)];
}

- (instancetype)initWithImActorModelModulesSecurity_$3:(ImActorModelModulesSecurity_$3 *)outer$
                                 withAMCommandCallback:(id<AMCommandCallback>)capture$0 {
  ImActorModelModulesSecurity_$3_$1_initWithImActorModelModulesSecurity_$3_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesSecurity_$3_$1_initWithImActorModelModulesSecurity_$3_withAMCommandCallback_(ImActorModelModulesSecurity_$3_$1 *self, ImActorModelModulesSecurity_$3 *outer$, id<AMCommandCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$3_$1 *new_ImActorModelModulesSecurity_$3_$1_initWithImActorModelModulesSecurity_$3_withAMCommandCallback_(ImActorModelModulesSecurity_$3 *outer$, id<AMCommandCallback> capture$0) {
  ImActorModelModulesSecurity_$3_$1 *self = [ImActorModelModulesSecurity_$3_$1 alloc];
  ImActorModelModulesSecurity_$3_$1_initWithImActorModelModulesSecurity_$3_withAMCommandCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$3_$1)

@implementation ImActorModelModulesSecurity_$3_$1_$1

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onResultWithId:JavaLangBoolean_valueOfWithBoolean_(YES)];
}

- (instancetype)initWithImActorModelModulesSecurity_$3_$1:(ImActorModelModulesSecurity_$3_$1 *)outer$ {
  ImActorModelModulesSecurity_$3_$1_$1_initWithImActorModelModulesSecurity_$3_$1_(self, outer$);
  return self;
}

@end

void ImActorModelModulesSecurity_$3_$1_$1_initWithImActorModelModulesSecurity_$3_$1_(ImActorModelModulesSecurity_$3_$1_$1 *self, ImActorModelModulesSecurity_$3_$1 *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$3_$1_$1 *new_ImActorModelModulesSecurity_$3_$1_$1_initWithImActorModelModulesSecurity_$3_$1_(ImActorModelModulesSecurity_$3_$1 *outer$) {
  ImActorModelModulesSecurity_$3_$1_$1 *self = [ImActorModelModulesSecurity_$3_$1_$1 alloc];
  ImActorModelModulesSecurity_$3_$1_$1_initWithImActorModelModulesSecurity_$3_$1_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$3_$1_$1)

@implementation ImActorModelModulesSecurity_$3_$1_$2

- (void)run {
  [((id<AMCommandCallback>) nil_chk(this$0_->val$callback_)) onErrorWithJavaLangException:val$e_];
}

- (instancetype)initWithImActorModelModulesSecurity_$3_$1:(ImActorModelModulesSecurity_$3_$1 *)outer$
                                       withAMRpcException:(AMRpcException *)capture$0 {
  ImActorModelModulesSecurity_$3_$1_$2_initWithImActorModelModulesSecurity_$3_$1_withAMRpcException_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesSecurity_$3_$1_$2_initWithImActorModelModulesSecurity_$3_$1_withAMRpcException_(ImActorModelModulesSecurity_$3_$1_$2 *self, ImActorModelModulesSecurity_$3_$1 *outer$, AMRpcException *capture$0) {
  self->this$0_ = outer$;
  self->val$e_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesSecurity_$3_$1_$2 *new_ImActorModelModulesSecurity_$3_$1_$2_initWithImActorModelModulesSecurity_$3_$1_withAMRpcException_(ImActorModelModulesSecurity_$3_$1 *outer$, AMRpcException *capture$0) {
  ImActorModelModulesSecurity_$3_$1_$2 *self = [ImActorModelModulesSecurity_$3_$1_$2 alloc];
  ImActorModelModulesSecurity_$3_$1_$2_initWithImActorModelModulesSecurity_$3_$1_withAMRpcException_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesSecurity_$3_$1_$2)
