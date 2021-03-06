//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/modules/typing/TypingActor.java
//


#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/TypingType.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/MailboxCreator.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Typing.h"
#include "im/actor/model/modules/typing/TypingActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/viewmodel/GroupTypingVM.h"
#include "im/actor/model/viewmodel/UserTypingVM.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"

#define ImActorModelModulesTypingTypingActor_TYPING_TEXT_TIMEOUT 3000

@interface ImActorModelModulesTypingTypingActor () {
 @public
  JavaUtilHashSet *typings_;
  JavaUtilHashMap *groupTypings_;
}

- (void)privateTypingWithInt:(jint)uid
        withAPTypingTypeEnum:(APTypingTypeEnum *)type;

- (void)stopPrivateTypingWithInt:(jint)uid;

- (void)groupTypingWithInt:(jint)gid
                   withInt:(jint)uid
      withAPTypingTypeEnum:(APTypingTypeEnum *)type;

- (void)stopGroupTypingWithInt:(jint)gid
                       withInt:(jint)uid;

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesTypingTypingActor, typings_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ImActorModelModulesTypingTypingActor, groupTypings_, JavaUtilHashMap *)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesTypingTypingActor, TYPING_TEXT_TIMEOUT, jint)

__attribute__((unused)) static void ImActorModelModulesTypingTypingActor_privateTypingWithInt_withAPTypingTypeEnum_(ImActorModelModulesTypingTypingActor *self, jint uid, APTypingTypeEnum *type);

__attribute__((unused)) static void ImActorModelModulesTypingTypingActor_stopPrivateTypingWithInt_(ImActorModelModulesTypingTypingActor *self, jint uid);

__attribute__((unused)) static void ImActorModelModulesTypingTypingActor_groupTypingWithInt_withInt_withAPTypingTypeEnum_(ImActorModelModulesTypingTypingActor *self, jint gid, jint uid, APTypingTypeEnum *type);

__attribute__((unused)) static void ImActorModelModulesTypingTypingActor_stopGroupTypingWithInt_withInt_(ImActorModelModulesTypingTypingActor *self, jint gid, jint uid);

@interface ImActorModelModulesTypingTypingActor_StopTyping () {
 @public
  jint uid_;
}

@end

@interface ImActorModelModulesTypingTypingActor_StopGroupTyping () {
 @public
  jint gid_;
  jint uid_;
}

@end

@interface ImActorModelModulesTypingTypingActor_PrivateTyping () {
 @public
  jint uid_;
  APTypingTypeEnum *type_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesTypingTypingActor_PrivateTyping, type_, APTypingTypeEnum *)

@interface ImActorModelModulesTypingTypingActor_GroupTyping () {
 @public
  jint gid_;
  jint uid_;
  APTypingTypeEnum *type_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesTypingTypingActor_GroupTyping, type_, APTypingTypeEnum *)

@interface ImActorModelModulesTypingTypingActor_$1 : NSObject < DKActorCreator > {
 @public
  ImActorModelModulesModules *val$messenger_;
}

- (ImActorModelModulesTypingTypingActor *)create;

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesTypingTypingActor_$1, val$messenger_, ImActorModelModulesModules *)

__attribute__((unused)) static void ImActorModelModulesTypingTypingActor_$1_initWithImActorModelModulesModules_(ImActorModelModulesTypingTypingActor_$1 *self, ImActorModelModulesModules *capture$0);

__attribute__((unused)) static ImActorModelModulesTypingTypingActor_$1 *new_ImActorModelModulesTypingTypingActor_$1_initWithImActorModelModulesModules_(ImActorModelModulesModules *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_$1)

@interface ImActorModelModulesTypingTypingActor_$2 : NSObject < DKMailboxCreator >

- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_$2)

__attribute__((unused)) static void ImActorModelModulesTypingTypingActor_$2_init(ImActorModelModulesTypingTypingActor_$2 *self);

__attribute__((unused)) static ImActorModelModulesTypingTypingActor_$2 *new_ImActorModelModulesTypingTypingActor_$2_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_$2)

@interface ImActorModelModulesTypingTypingActor_$2_$1 : DKMailbox

- (jboolean)isEqualEnvelopeWithDKEnvelope:(DKEnvelope *)a
                           withDKEnvelope:(DKEnvelope *)b;

- (instancetype)initWithDKMailboxesQueue:(DKMailboxesQueue *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesTypingTypingActor_$2_$1)

__attribute__((unused)) static void ImActorModelModulesTypingTypingActor_$2_$1_initWithDKMailboxesQueue_(ImActorModelModulesTypingTypingActor_$2_$1 *self, DKMailboxesQueue *arg$0);

__attribute__((unused)) static ImActorModelModulesTypingTypingActor_$2_$1 *new_ImActorModelModulesTypingTypingActor_$2_$1_initWithDKMailboxesQueue_(DKMailboxesQueue *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesTypingTypingActor_$2_$1)

@implementation ImActorModelModulesTypingTypingActor

+ (DKActorRef *)getWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  return ImActorModelModulesTypingTypingActor_getWithImActorModelModulesModules_(messenger);
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesTypingTypingActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

- (void)privateTypingWithInt:(jint)uid
        withAPTypingTypeEnum:(APTypingTypeEnum *)type {
  ImActorModelModulesTypingTypingActor_privateTypingWithInt_withAPTypingTypeEnum_(self, uid, type);
}

- (void)stopPrivateTypingWithInt:(jint)uid {
  ImActorModelModulesTypingTypingActor_stopPrivateTypingWithInt_(self, uid);
}

- (void)groupTypingWithInt:(jint)gid
                   withInt:(jint)uid
      withAPTypingTypeEnum:(APTypingTypeEnum *)type {
  ImActorModelModulesTypingTypingActor_groupTypingWithInt_withInt_withAPTypingTypeEnum_(self, gid, uid, type);
}

- (void)stopGroupTypingWithInt:(jint)gid
                       withInt:(jint)uid {
  ImActorModelModulesTypingTypingActor_stopGroupTypingWithInt_withInt_(self, gid, uid);
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesTypingTypingActor_PrivateTyping class]]) {
    ImActorModelModulesTypingTypingActor_PrivateTyping *typing = (ImActorModelModulesTypingTypingActor_PrivateTyping *) check_class_cast(message, [ImActorModelModulesTypingTypingActor_PrivateTyping class]);
    ImActorModelModulesTypingTypingActor_privateTypingWithInt_withAPTypingTypeEnum_(self, [((ImActorModelModulesTypingTypingActor_PrivateTyping *) nil_chk(typing)) getUid], [typing getType]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesTypingTypingActor_GroupTyping class]]) {
    ImActorModelModulesTypingTypingActor_GroupTyping *typing = (ImActorModelModulesTypingTypingActor_GroupTyping *) check_class_cast(message, [ImActorModelModulesTypingTypingActor_GroupTyping class]);
    ImActorModelModulesTypingTypingActor_groupTypingWithInt_withInt_withAPTypingTypeEnum_(self, [((ImActorModelModulesTypingTypingActor_GroupTyping *) nil_chk(typing)) getGid], [typing getUid], [typing getType]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesTypingTypingActor_StopTyping class]]) {
    ImActorModelModulesTypingTypingActor_StopTyping *typing = (ImActorModelModulesTypingTypingActor_StopTyping *) check_class_cast(message, [ImActorModelModulesTypingTypingActor_StopTyping class]);
    ImActorModelModulesTypingTypingActor_stopPrivateTypingWithInt_(self, [((ImActorModelModulesTypingTypingActor_StopTyping *) nil_chk(typing)) getUid]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesTypingTypingActor_StopGroupTyping class]]) {
    ImActorModelModulesTypingTypingActor_StopGroupTyping *typing = (ImActorModelModulesTypingTypingActor_StopGroupTyping *) check_class_cast(message, [ImActorModelModulesTypingTypingActor_StopGroupTyping class]);
    ImActorModelModulesTypingTypingActor_stopGroupTypingWithInt_withInt_(self, [((ImActorModelModulesTypingTypingActor_StopGroupTyping *) nil_chk(typing)) getGid], [typing getUid]);
  }
  else {
    [self dropWithId:message];
  }
}

@end

DKActorRef *ImActorModelModulesTypingTypingActor_getWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesTypingTypingActor_initialize();
  return [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_withDKMailboxCreator_(ImActorModelModulesTypingTypingActor_class_(), new_ImActorModelModulesTypingTypingActor_$1_initWithImActorModelModulesModules_(messenger), new_ImActorModelModulesTypingTypingActor_$2_init()) withNSString:@"actor/typing"];
}

void ImActorModelModulesTypingTypingActor_initWithImActorModelModulesModules_(ImActorModelModulesTypingTypingActor *self, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(self, messenger);
  self->typings_ = new_JavaUtilHashSet_init();
  self->groupTypings_ = new_JavaUtilHashMap_init();
}

ImActorModelModulesTypingTypingActor *new_ImActorModelModulesTypingTypingActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesTypingTypingActor *self = [ImActorModelModulesTypingTypingActor alloc];
  ImActorModelModulesTypingTypingActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

void ImActorModelModulesTypingTypingActor_privateTypingWithInt_withAPTypingTypeEnum_(ImActorModelModulesTypingTypingActor *self, jint uid, APTypingTypeEnum *type) {
  if (type != APTypingTypeEnum_get_TEXT()) {
    return;
  }
  if ([self getUserWithInt:uid] == nil) {
    return;
  }
  if (![((JavaUtilHashSet *) nil_chk(self->typings_)) containsWithId:JavaLangInteger_valueOfWithInt_(uid)]) {
    [self->typings_ addWithId:JavaLangInteger_valueOfWithInt_(uid)];
    [((AMValueModel *) nil_chk([((AMUserTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getTypingModule])) getTypingWithInt:uid])) getTyping])) changeWithValue:JavaLangBoolean_valueOfWithBoolean_(YES)];
  }
  [((DKActorRef *) nil_chk([self self__])) sendOnceWithId:new_ImActorModelModulesTypingTypingActor_StopTyping_initWithInt_(uid) withLong:ImActorModelModulesTypingTypingActor_TYPING_TEXT_TIMEOUT];
}

void ImActorModelModulesTypingTypingActor_stopPrivateTypingWithInt_(ImActorModelModulesTypingTypingActor *self, jint uid) {
  if ([((JavaUtilHashSet *) nil_chk(self->typings_)) containsWithId:JavaLangInteger_valueOfWithInt_(uid)]) {
    [self->typings_ removeWithId:JavaLangInteger_valueOfWithInt_(uid)];
    [((AMValueModel *) nil_chk([((AMUserTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getTypingModule])) getTypingWithInt:uid])) getTyping])) changeWithValue:JavaLangBoolean_valueOfWithBoolean_(NO)];
  }
}

void ImActorModelModulesTypingTypingActor_groupTypingWithInt_withInt_withAPTypingTypeEnum_(ImActorModelModulesTypingTypingActor *self, jint gid, jint uid, APTypingTypeEnum *type) {
  if (type != APTypingTypeEnum_get_TEXT()) {
    return;
  }
  if ([self getGroupWithInt:gid] == nil) {
    return;
  }
  if ([self getUserWithInt:uid] == nil) {
    return;
  }
  if (![((JavaUtilHashMap *) nil_chk(self->groupTypings_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(gid)]) {
    JavaUtilHashSet *set = new_JavaUtilHashSet_init();
    [set addWithId:JavaLangInteger_valueOfWithInt_(uid)];
    (void) [self->groupTypings_ putWithId:JavaLangInteger_valueOfWithInt_(gid) withId:set];
    [((AMValueModel *) nil_chk([((AMGroupTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getTypingModule])) getGroupTypingWithInt:gid])) getActive])) changeWithValue:[IOSIntArray newArrayWithInts:(jint[]){ uid } count:1]];
  }
  else {
    JavaUtilHashSet *src = [self->groupTypings_ getWithId:JavaLangInteger_valueOfWithInt_(gid)];
    if (![((JavaUtilHashSet *) nil_chk(src)) containsWithId:JavaLangInteger_valueOfWithInt_(uid)]) {
      [src addWithId:JavaLangInteger_valueOfWithInt_(uid)];
      IOSObjectArray *ids = [src toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[src size] type:JavaLangInteger_class_()]];
      IOSIntArray *ids2 = [IOSIntArray newArrayWithLength:((IOSObjectArray *) nil_chk(ids))->size_];
      for (jint i = 0; i < ids->size_; i++) {
        *IOSIntArray_GetRef(ids2, i) = [((JavaLangInteger *) nil_chk(IOSObjectArray_Get(ids, i))) intValue];
      }
      [((AMValueModel *) nil_chk([((AMGroupTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getTypingModule])) getGroupTypingWithInt:gid])) getActive])) changeWithValue:ids2];
    }
  }
  [((DKActorRef *) nil_chk([self self__])) sendOnceWithId:new_ImActorModelModulesTypingTypingActor_StopGroupTyping_initWithInt_withInt_(gid, uid) withLong:ImActorModelModulesTypingTypingActor_TYPING_TEXT_TIMEOUT];
}

void ImActorModelModulesTypingTypingActor_stopGroupTypingWithInt_withInt_(ImActorModelModulesTypingTypingActor *self, jint gid, jint uid) {
  if (![((JavaUtilHashMap *) nil_chk(self->groupTypings_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(gid)]) {
    return;
  }
  JavaUtilHashSet *set = [self->groupTypings_ getWithId:JavaLangInteger_valueOfWithInt_(gid)];
  if ([((JavaUtilHashSet *) nil_chk(set)) containsWithId:JavaLangInteger_valueOfWithInt_(uid)]) {
    [set removeWithId:JavaLangInteger_valueOfWithInt_(uid)];
    IOSObjectArray *ids = [set toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[set size] type:JavaLangInteger_class_()]];
    IOSIntArray *ids2 = [IOSIntArray newArrayWithLength:((IOSObjectArray *) nil_chk(ids))->size_];
    for (jint i = 0; i < ids->size_; i++) {
      *IOSIntArray_GetRef(ids2, i) = [((JavaLangInteger *) nil_chk(IOSObjectArray_Get(ids, i))) intValue];
    }
    [((AMValueModel *) nil_chk([((AMGroupTypingVM *) nil_chk([((ImActorModelModulesTyping *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getTypingModule])) getGroupTypingWithInt:gid])) getActive])) changeWithValue:ids2];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingTypingActor)

@implementation ImActorModelModulesTypingTypingActor_StopTyping

- (instancetype)initWithInt:(jint)uid {
  ImActorModelModulesTypingTypingActor_StopTyping_initWithInt_(self, uid);
  return self;
}

- (jint)getUid {
  return uid_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelModulesTypingTypingActor_StopTyping *that = (ImActorModelModulesTypingTypingActor_StopTyping *) check_class_cast(o, [ImActorModelModulesTypingTypingActor_StopTyping class]);
  if (uid_ != ((ImActorModelModulesTypingTypingActor_StopTyping *) nil_chk(that))->uid_) return NO;
  return YES;
}

- (NSUInteger)hash {
  return uid_;
}

@end

void ImActorModelModulesTypingTypingActor_StopTyping_initWithInt_(ImActorModelModulesTypingTypingActor_StopTyping *self, jint uid) {
  (void) NSObject_init(self);
  self->uid_ = uid;
}

ImActorModelModulesTypingTypingActor_StopTyping *new_ImActorModelModulesTypingTypingActor_StopTyping_initWithInt_(jint uid) {
  ImActorModelModulesTypingTypingActor_StopTyping *self = [ImActorModelModulesTypingTypingActor_StopTyping alloc];
  ImActorModelModulesTypingTypingActor_StopTyping_initWithInt_(self, uid);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingTypingActor_StopTyping)

@implementation ImActorModelModulesTypingTypingActor_StopGroupTyping

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)uid {
  ImActorModelModulesTypingTypingActor_StopGroupTyping_initWithInt_withInt_(self, gid, uid);
  return self;
}

- (jint)getGid {
  return gid_;
}

- (jint)getUid {
  return uid_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelModulesTypingTypingActor_StopGroupTyping *that = (ImActorModelModulesTypingTypingActor_StopGroupTyping *) check_class_cast(o, [ImActorModelModulesTypingTypingActor_StopGroupTyping class]);
  if (gid_ != ((ImActorModelModulesTypingTypingActor_StopGroupTyping *) nil_chk(that))->gid_) return NO;
  if (uid_ != that->uid_) return NO;
  return YES;
}

- (NSUInteger)hash {
  jint result = gid_;
  result = 31 * result + uid_;
  return result;
}

@end

void ImActorModelModulesTypingTypingActor_StopGroupTyping_initWithInt_withInt_(ImActorModelModulesTypingTypingActor_StopGroupTyping *self, jint gid, jint uid) {
  (void) NSObject_init(self);
  self->gid_ = gid;
  self->uid_ = uid;
}

ImActorModelModulesTypingTypingActor_StopGroupTyping *new_ImActorModelModulesTypingTypingActor_StopGroupTyping_initWithInt_withInt_(jint gid, jint uid) {
  ImActorModelModulesTypingTypingActor_StopGroupTyping *self = [ImActorModelModulesTypingTypingActor_StopGroupTyping alloc];
  ImActorModelModulesTypingTypingActor_StopGroupTyping_initWithInt_withInt_(self, gid, uid);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingTypingActor_StopGroupTyping)

@implementation ImActorModelModulesTypingTypingActor_PrivateTyping

- (instancetype)initWithInt:(jint)uid
       withAPTypingTypeEnum:(APTypingTypeEnum *)type {
  ImActorModelModulesTypingTypingActor_PrivateTyping_initWithInt_withAPTypingTypeEnum_(self, uid, type);
  return self;
}

- (jint)getUid {
  return uid_;
}

- (APTypingTypeEnum *)getType {
  return type_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelModulesTypingTypingActor_PrivateTyping *that = (ImActorModelModulesTypingTypingActor_PrivateTyping *) check_class_cast(o, [ImActorModelModulesTypingTypingActor_PrivateTyping class]);
  if (type_ != ((ImActorModelModulesTypingTypingActor_PrivateTyping *) nil_chk(that))->type_) return NO;
  if (uid_ != that->uid_) return NO;
  return YES;
}

- (NSUInteger)hash {
  jint result = uid_;
  result = 31 * result + [((APTypingTypeEnum *) nil_chk(type_)) getValue];
  return result;
}

@end

void ImActorModelModulesTypingTypingActor_PrivateTyping_initWithInt_withAPTypingTypeEnum_(ImActorModelModulesTypingTypingActor_PrivateTyping *self, jint uid, APTypingTypeEnum *type) {
  (void) NSObject_init(self);
  self->uid_ = uid;
  self->type_ = type;
}

ImActorModelModulesTypingTypingActor_PrivateTyping *new_ImActorModelModulesTypingTypingActor_PrivateTyping_initWithInt_withAPTypingTypeEnum_(jint uid, APTypingTypeEnum *type) {
  ImActorModelModulesTypingTypingActor_PrivateTyping *self = [ImActorModelModulesTypingTypingActor_PrivateTyping alloc];
  ImActorModelModulesTypingTypingActor_PrivateTyping_initWithInt_withAPTypingTypeEnum_(self, uid, type);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingTypingActor_PrivateTyping)

@implementation ImActorModelModulesTypingTypingActor_GroupTyping

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)uid
       withAPTypingTypeEnum:(APTypingTypeEnum *)type {
  ImActorModelModulesTypingTypingActor_GroupTyping_initWithInt_withInt_withAPTypingTypeEnum_(self, gid, uid, type);
  return self;
}

- (jint)getGid {
  return gid_;
}

- (jint)getUid {
  return uid_;
}

- (APTypingTypeEnum *)getType {
  return type_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelModulesTypingTypingActor_GroupTyping *that = (ImActorModelModulesTypingTypingActor_GroupTyping *) check_class_cast(o, [ImActorModelModulesTypingTypingActor_GroupTyping class]);
  if (gid_ != ((ImActorModelModulesTypingTypingActor_GroupTyping *) nil_chk(that))->gid_) return NO;
  if (type_ != that->type_) return NO;
  if (uid_ != that->uid_) return NO;
  return YES;
}

- (NSUInteger)hash {
  jint result = gid_;
  result = 31 * result + uid_;
  result = 31 * result + [((APTypingTypeEnum *) nil_chk(type_)) getValue];
  return result;
}

@end

void ImActorModelModulesTypingTypingActor_GroupTyping_initWithInt_withInt_withAPTypingTypeEnum_(ImActorModelModulesTypingTypingActor_GroupTyping *self, jint gid, jint uid, APTypingTypeEnum *type) {
  (void) NSObject_init(self);
  self->gid_ = gid;
  self->uid_ = uid;
  self->type_ = type;
}

ImActorModelModulesTypingTypingActor_GroupTyping *new_ImActorModelModulesTypingTypingActor_GroupTyping_initWithInt_withInt_withAPTypingTypeEnum_(jint gid, jint uid, APTypingTypeEnum *type) {
  ImActorModelModulesTypingTypingActor_GroupTyping *self = [ImActorModelModulesTypingTypingActor_GroupTyping alloc];
  ImActorModelModulesTypingTypingActor_GroupTyping_initWithInt_withInt_withAPTypingTypeEnum_(self, gid, uid, type);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingTypingActor_GroupTyping)

@implementation ImActorModelModulesTypingTypingActor_$1

- (ImActorModelModulesTypingTypingActor *)create {
  return new_ImActorModelModulesTypingTypingActor_initWithImActorModelModulesModules_(val$messenger_);
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0 {
  ImActorModelModulesTypingTypingActor_$1_initWithImActorModelModulesModules_(self, capture$0);
  return self;
}

@end

void ImActorModelModulesTypingTypingActor_$1_initWithImActorModelModulesModules_(ImActorModelModulesTypingTypingActor_$1 *self, ImActorModelModulesModules *capture$0) {
  self->val$messenger_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesTypingTypingActor_$1 *new_ImActorModelModulesTypingTypingActor_$1_initWithImActorModelModulesModules_(ImActorModelModulesModules *capture$0) {
  ImActorModelModulesTypingTypingActor_$1 *self = [ImActorModelModulesTypingTypingActor_$1 alloc];
  ImActorModelModulesTypingTypingActor_$1_initWithImActorModelModulesModules_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingTypingActor_$1)

@implementation ImActorModelModulesTypingTypingActor_$2

- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue {
  return new_ImActorModelModulesTypingTypingActor_$2_$1_initWithDKMailboxesQueue_(queue);
}

- (instancetype)init {
  ImActorModelModulesTypingTypingActor_$2_init(self);
  return self;
}

@end

void ImActorModelModulesTypingTypingActor_$2_init(ImActorModelModulesTypingTypingActor_$2 *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesTypingTypingActor_$2 *new_ImActorModelModulesTypingTypingActor_$2_init() {
  ImActorModelModulesTypingTypingActor_$2 *self = [ImActorModelModulesTypingTypingActor_$2 alloc];
  ImActorModelModulesTypingTypingActor_$2_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingTypingActor_$2)

@implementation ImActorModelModulesTypingTypingActor_$2_$1

- (jboolean)isEqualEnvelopeWithDKEnvelope:(DKEnvelope *)a
                           withDKEnvelope:(DKEnvelope *)b {
  return [nil_chk([((DKEnvelope *) nil_chk(a)) getMessage]) isEqual:[((DKEnvelope *) nil_chk(b)) getMessage]];
}

- (instancetype)initWithDKMailboxesQueue:(DKMailboxesQueue *)arg$0 {
  ImActorModelModulesTypingTypingActor_$2_$1_initWithDKMailboxesQueue_(self, arg$0);
  return self;
}

@end

void ImActorModelModulesTypingTypingActor_$2_$1_initWithDKMailboxesQueue_(ImActorModelModulesTypingTypingActor_$2_$1 *self, DKMailboxesQueue *arg$0) {
  (void) DKMailbox_initWithDKMailboxesQueue_(self, arg$0);
}

ImActorModelModulesTypingTypingActor_$2_$1 *new_ImActorModelModulesTypingTypingActor_$2_$1_initWithDKMailboxesQueue_(DKMailboxesQueue *arg$0) {
  ImActorModelModulesTypingTypingActor_$2_$1 *self = [ImActorModelModulesTypingTypingActor_$2_$1 alloc];
  ImActorModelModulesTypingTypingActor_$2_$1_initWithDKMailboxesQueue_(self, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesTypingTypingActor_$2_$1)
