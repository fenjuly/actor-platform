//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/entity/compat/content/ObsoleteServiceAdded.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/ServiceExUserInvited.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/compat/content/ObsoleteServiceAdded.h"
#include "java/io/IOException.h"
#include "java/lang/UnsupportedOperationException.h"

@interface ImActorModelEntityCompatContentObsoleteServiceAdded () {
 @public
  jint addedUid_;
}

@end

@implementation ImActorModelEntityCompatContentObsoleteServiceAdded

- (instancetype)initWithBSBserValues:(BSBserValues *)values {
  ImActorModelEntityCompatContentObsoleteServiceAdded_initWithBSBserValues_(self, values);
  return self;
}

- (APMessage *)toApiMessage {
  return new_APServiceMessage_initWithNSString_withAPServiceEx_(@"Member added", new_APServiceExUserInvited_initWithInt_(addedUid_));
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  addedUid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:10];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  @throw new_JavaLangUnsupportedOperationException_init();
}

@end

void ImActorModelEntityCompatContentObsoleteServiceAdded_initWithBSBserValues_(ImActorModelEntityCompatContentObsoleteServiceAdded *self, BSBserValues *values) {
  (void) BSBserObject_init(self);
  [self parseWithBSBserValues:values];
}

ImActorModelEntityCompatContentObsoleteServiceAdded *new_ImActorModelEntityCompatContentObsoleteServiceAdded_initWithBSBserValues_(BSBserValues *values) {
  ImActorModelEntityCompatContentObsoleteServiceAdded *self = [ImActorModelEntityCompatContentObsoleteServiceAdded alloc];
  ImActorModelEntityCompatContentObsoleteServiceAdded_initWithBSBserValues_(self, values);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityCompatContentObsoleteServiceAdded)
