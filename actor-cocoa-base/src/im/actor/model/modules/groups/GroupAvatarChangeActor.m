//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/groups/GroupAvatarChangeActor.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/modules/Files.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/groups/GroupAvatarChangeActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/modules/utils/RandomUtils.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/HashMap.h"

@interface ImActorModelModulesGroupsGroupAvatarChangeActor () {
 @public
  JavaUtilHashMap *currentTasks_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesGroupsGroupAvatarChangeActor, currentTasks_, JavaUtilHashMap *)

@implementation ImActorModelModulesGroupsGroupAvatarChangeActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self = [super initWithImActorModelModulesModules:modules]) {
    currentTasks_ = [[JavaUtilHashMap alloc] init];
  }
  return self;
}

- (void)changeAvatarWithInt:(jint)gid
               withNSString:(NSString *)descriptor {
  if ([((JavaUtilHashMap *) nil_chk(currentTasks_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(gid)]) {
    [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getFilesModule])) cancelUploadWithLong:[((JavaLangLong *) nil_chk([currentTasks_ getWithId:JavaLangInteger_valueOfWithInt_(gid)])) longLongValue]];
    (void) [currentTasks_ removeWithId:JavaLangInteger_valueOfWithInt_(gid)];
  }
  jlong rid = ImActorModelModulesUtilsRandomUtils_nextRid();
  (void) [currentTasks_ putWithId:JavaLangInteger_valueOfWithInt_(gid) withId:JavaLangLong_valueOfWithLong_(rid)];
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getFilesModule])) requestUploadWithLong:rid withNSString:descriptor withNSString:@"avatar.jpg" withDKActorRef:[self self__]];
}

- (void)uploadCompletedWithLong:(jlong)rid
            withAMFileReference:(AMFileReference *)fileReference {
}

- (void)copyAllFieldsTo:(ImActorModelModulesGroupsGroupAvatarChangeActor *)other {
  [super copyAllFieldsTo:other];
  other->currentTasks_ = currentTasks_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesGroupsGroupAvatarChangeActor)