//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/BserUnknownFields.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/BserUnknownFields.java"

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserUnknownField.h"
#include "im/actor/model/droidkit/bser/BserUnknownFields.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/util/ArrayList.h"

@interface BSBserUnknownFields () {
 @public
  JavaUtilArrayList *fields_;
}

@end

J2OBJC_FIELD_SETTER(BSBserUnknownFields, fields_, JavaUtilArrayList *)


#line 8
@implementation BSBserUnknownFields


#line 12
- (void)addWithInt:(jint)id_
           withInt:(jint)type
     withByteArray:(IOSByteArray *)field {
  [((JavaUtilArrayList *) nil_chk(fields_)) addWithId:new_BSBserUnknownField_initWithInt_withInt_withByteArray_(id_, type, field)];
}


#line 16
- (void)addWithInt:(jint)id_
           withInt:(jint)type
          withLong:(jlong)value {
  [((JavaUtilArrayList *) nil_chk(fields_)) addWithId:new_BSBserUnknownField_initWithInt_withInt_withByteArray_(id_, type, BSUtils_longToBytesWithLong_(value))];
}

- (instancetype)init {
  BSBserUnknownFields_init(self);
  return self;
}

@end

void BSBserUnknownFields_init(BSBserUnknownFields *self) {
  (void) NSObject_init(self);
  self->fields_ = new_JavaUtilArrayList_init();
}

BSBserUnknownFields *new_BSBserUnknownFields_init() {
  BSBserUnknownFields *self = [BSBserUnknownFields alloc];
  BSBserUnknownFields_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSBserUnknownFields)