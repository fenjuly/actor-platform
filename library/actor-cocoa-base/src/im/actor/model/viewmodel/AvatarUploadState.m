//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/AvatarUploadState.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/viewmodel/AvatarUploadState.java"

#include "J2ObjC_source.h"
#include "im/actor/model/viewmodel/AvatarUploadState.h"

@interface AMAvatarUploadState () {
 @public
  NSString *descriptor_;
  jboolean isUploading__;
}
@end

J2OBJC_FIELD_SETTER(AMAvatarUploadState, descriptor_, NSString *)


#line 6
@implementation AMAvatarUploadState


#line 10
- (instancetype)initWithNSString:(NSString *)descriptor
                     withBoolean:(jboolean)isUploading {
  if (self = [super init]) {
    
#line 11
    self->descriptor_ = descriptor;
    
#line 12
    self->isUploading__ = isUploading;
  }
  return self;
}


#line 20
- (NSString *)getDescriptor {
  
#line 21
  return descriptor_;
}


#line 29
- (jboolean)isUploading {
  
#line 30
  return isUploading__;
}

- (void)copyAllFieldsTo:(AMAvatarUploadState *)other {
  [super copyAllFieldsTo:other];
  other->descriptor_ = descriptor_;
  other->isUploading__ = isUploading__;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMAvatarUploadState)
