//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ContactType.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/ContactType.h"
#include "java/io/IOException.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

@interface ImActorModelApiContactTypeEnum () {
 @public
  jint value_;
}

@end

__attribute__((unused)) static void ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(ImActorModelApiContactTypeEnum *self, jint value, NSString *__name, jint __ordinal);

__attribute__((unused)) static ImActorModelApiContactTypeEnum *new_ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(ImActorModelApiContactTypeEnum)

ImActorModelApiContactTypeEnum *ImActorModelApiContactTypeEnum_values_[3];

@implementation ImActorModelApiContactTypeEnum

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}

- (jint)getValue {
  return value_;
}

+ (ImActorModelApiContactTypeEnum *)parseWithInt:(jint)value {
  return ImActorModelApiContactTypeEnum_parseWithInt_(value);
}

IOSObjectArray *ImActorModelApiContactTypeEnum_values() {
  ImActorModelApiContactTypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:ImActorModelApiContactTypeEnum_values_ count:3 type:ImActorModelApiContactTypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return ImActorModelApiContactTypeEnum_values();
}

+ (ImActorModelApiContactTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ImActorModelApiContactTypeEnum_valueOfWithNSString_(name);
}

ImActorModelApiContactTypeEnum *ImActorModelApiContactTypeEnum_valueOfWithNSString_(NSString *name) {
  ImActorModelApiContactTypeEnum_initialize();
  for (int i = 0; i < 3; i++) {
    ImActorModelApiContactTypeEnum *e = ImActorModelApiContactTypeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ImActorModelApiContactTypeEnum class]) {
    ImActorModelApiContactTypeEnum_PHONE = new_ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(1, @"PHONE", 0);
    ImActorModelApiContactTypeEnum_EMAIL = new_ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(2, @"EMAIL", 1);
    ImActorModelApiContactTypeEnum_UNSUPPORTED_VALUE = new_ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(-1, @"UNSUPPORTED_VALUE", 2);
    J2OBJC_SET_INITIALIZED(ImActorModelApiContactTypeEnum)
  }
}

@end

void ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(ImActorModelApiContactTypeEnum *self, jint value, NSString *__name, jint __ordinal) {
  (void) JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
  self->value_ = value;
}

ImActorModelApiContactTypeEnum *new_ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(jint value, NSString *__name, jint __ordinal) {
  ImActorModelApiContactTypeEnum *self = [ImActorModelApiContactTypeEnum alloc];
  ImActorModelApiContactTypeEnum_initWithInt_withNSString_withInt_(self, value, __name, __ordinal);
  return self;
}

ImActorModelApiContactTypeEnum *ImActorModelApiContactTypeEnum_parseWithInt_(jint value) {
  ImActorModelApiContactTypeEnum_initialize();
  switch (value) {
    case 1:
    return ImActorModelApiContactTypeEnum_PHONE;
    case 2:
    return ImActorModelApiContactTypeEnum_EMAIL;
    default:
    return ImActorModelApiContactTypeEnum_UNSUPPORTED_VALUE;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiContactTypeEnum)