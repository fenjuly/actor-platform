//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/GroupCreated.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/internal/GroupCreated.java"

#include "J2ObjC_source.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/concurrency/CommandCallback.h"
#include "im/actor/model/modules/updates/internal/GroupCreated.h"

@interface ImActorModelModulesUpdatesInternalGroupCreated () {
 @public
  ImActorModelApiGroup *group_;
  id<AMCommandCallback> callback_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesInternalGroupCreated, group_, ImActorModelApiGroup *)
J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesInternalGroupCreated, callback_, id<AMCommandCallback>)


#line 9
@implementation ImActorModelModulesUpdatesInternalGroupCreated


#line 13
- (instancetype)initWithImActorModelApiGroup:(ImActorModelApiGroup *)group
                       withAMCommandCallback:(id<AMCommandCallback>)callback {
  if (self = [super init]) {
    
#line 14
    self->group_ = group;
    
#line 15
    self->callback_ = callback;
  }
  return self;
}


#line 18
- (ImActorModelApiGroup *)getGroup {
  
#line 19
  return group_;
}


#line 22
- (id<AMCommandCallback>)getCallback {
  
#line 23
  return callback_;
}

- (void)copyAllFieldsTo:(ImActorModelModulesUpdatesInternalGroupCreated *)other {
  [super copyAllFieldsTo:other];
  other->group_ = group_;
  other->callback_ = callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesInternalGroupCreated)