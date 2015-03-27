//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/viewmodel/UploadFileVM.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/modules/Files.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/viewmodel/UploadCallback.h"
#include "im/actor/model/viewmodel/UploadFileVM.h"
#include "im/actor/model/viewmodel/UploadFileVMCallback.h"

@interface AMUploadFileVM () {
 @public
  jlong rid_;
  ImActorModelModulesModules *modules_;
  id<AMUploadFileVMCallback> vmCallback_;
  id<AMUploadCallback> callback_;
}
@end

J2OBJC_FIELD_SETTER(AMUploadFileVM, modules_, ImActorModelModulesModules *)
J2OBJC_FIELD_SETTER(AMUploadFileVM, vmCallback_, id<AMUploadFileVMCallback>)
J2OBJC_FIELD_SETTER(AMUploadFileVM, callback_, id<AMUploadCallback>)

@interface AMUploadFileVM_Uploading () {
 @public
  jfloat progress_;
}
- (instancetype)initWithAMUploadFileVM:(AMUploadFileVM *)outer$
                             withFloat:(jfloat)progress;
@end

@interface AMUploadFileVM_$1 () {
 @public
  AMUploadFileVM *this$0_;
}
@end

J2OBJC_FIELD_SETTER(AMUploadFileVM_$1, this$0_, AMUploadFileVM *)

@implementation AMUploadFileVM

- (instancetype)initWithLong:(jlong)rid
  withAMUploadFileVMCallback:(id<AMUploadFileVMCallback>)vmCallback
withImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  if (self = [super init]) {
    self->rid_ = rid;
    self->modules_ = modules;
    self->vmCallback_ = vmCallback;
    self->callback_ = [[AMUploadFileVM_$1 alloc] initWithAMUploadFileVM:self];
    [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules)) getFilesModule])) bindUploadFileWithLong:rid withAMUploadCallback:callback_];
  }
  return self;
}

- (void)onObjectReceivedWithId:(id)obj {
  if ([obj isKindOfClass:[AMUploadFileVM_NotUploading class]]) {
    [((id<AMUploadFileVMCallback>) nil_chk(vmCallback_)) onNotUploaded];
  }
  else if ([obj isKindOfClass:[AMUploadFileVM_Uploading class]]) {
    [((id<AMUploadFileVMCallback>) nil_chk(vmCallback_)) onUploadingWithFloat:[((AMUploadFileVM_Uploading *) nil_chk(((AMUploadFileVM_Uploading *) check_class_cast(obj, [AMUploadFileVM_Uploading class])))) getProgress]];
  }
  else if ([obj isKindOfClass:[AMUploadFileVM_Uploaded class]]) {
    [((id<AMUploadFileVMCallback>) nil_chk(vmCallback_)) onUploaded];
  }
}

- (void)detach {
  [super detach];
  [((ImActorModelModulesFiles *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules_)) getFilesModule])) unbindUploadFileWithLong:rid_ withAMUploadCallback:callback_];
}

- (void)copyAllFieldsTo:(AMUploadFileVM *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
  other->modules_ = modules_;
  other->vmCallback_ = vmCallback_;
  other->callback_ = callback_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMUploadFileVM)

@implementation AMUploadFileVM_NotUploading

- (instancetype)initWithAMUploadFileVM:(AMUploadFileVM *)outer$ {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMUploadFileVM_NotUploading)

@implementation AMUploadFileVM_Uploading

- (instancetype)initWithAMUploadFileVM:(AMUploadFileVM *)outer$
                             withFloat:(jfloat)progress {
  if (self = [super init]) {
    self->progress_ = progress;
  }
  return self;
}

- (jfloat)getProgress {
  return progress_;
}

- (void)copyAllFieldsTo:(AMUploadFileVM_Uploading *)other {
  [super copyAllFieldsTo:other];
  other->progress_ = progress_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMUploadFileVM_Uploading)

@implementation AMUploadFileVM_Uploaded

- (instancetype)initWithAMUploadFileVM:(AMUploadFileVM *)outer$ {
  return [super init];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMUploadFileVM_Uploaded)

@implementation AMUploadFileVM_$1

- (void)onNotUploading {
  [this$0_ postWithId:[[AMUploadFileVM_NotUploading alloc] initWithAMUploadFileVM:this$0_]];
}

- (void)onUploadingWithFloat:(jfloat)progress {
  [this$0_ postWithId:[[AMUploadFileVM_Uploading alloc] initWithAMUploadFileVM:this$0_ withFloat:progress]];
}

- (void)onUploaded {
  [this$0_ postWithId:[[AMUploadFileVM_Uploaded alloc] initWithAMUploadFileVM:this$0_]];
}

- (instancetype)initWithAMUploadFileVM:(AMUploadFileVM *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(AMUploadFileVM_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMUploadFileVM_$1)