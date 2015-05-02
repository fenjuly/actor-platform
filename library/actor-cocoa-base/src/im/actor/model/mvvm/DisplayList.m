//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/DisplayList.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/DisplayList.java"

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/mvvm/DisplayList.h"
#include "im/actor/model/mvvm/MVVMEngine.h"
#include "java/lang/Runnable.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/concurrent/CopyOnWriteArrayList.h"

@interface AMDisplayList () {
 @public
  jint DISPLAY_LIST_ID_;
  id<AMDisplayList_Hook> hook_;
  DKActorRef *executor_;
  IOSObjectArray *lists_;
  jint currentList_;
  JavaUtilConcurrentCopyOnWriteArrayList *listeners_;
}

@end

J2OBJC_FIELD_SETTER(AMDisplayList, hook_, id<AMDisplayList_Hook>)
J2OBJC_FIELD_SETTER(AMDisplayList, executor_, DKActorRef *)
J2OBJC_FIELD_SETTER(AMDisplayList, lists_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(AMDisplayList, listeners_, JavaUtilConcurrentCopyOnWriteArrayList *)

static jint AMDisplayList_NEXT_ID_ = 
#line 19
0;
J2OBJC_STATIC_FIELD_GETTER(AMDisplayList, NEXT_ID_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(AMDisplayList, NEXT_ID_, jint)

@interface AMDisplayList_ListSwitcher : DKActor {
 @public
  JavaUtilArrayList *pending_;
  jboolean isLocked_;
  AMDisplayList *displayList_;
}

- (instancetype)initWithAMDisplayList:(AMDisplayList *)displayList;

- (void)onEditListWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)modification
                            withJavaLangRunnable:(id<JavaLangRunnable>)runnable;

- (void)requestListSwitchWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications;

- (void)onListSwitchedWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_ListSwitcher)

J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher, pending_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher, displayList_, AMDisplayList *)

__attribute__((unused)) static void AMDisplayList_ListSwitcher_initWithAMDisplayList_(AMDisplayList_ListSwitcher *self, AMDisplayList *displayList);

__attribute__((unused)) static AMDisplayList_ListSwitcher *new_AMDisplayList_ListSwitcher_initWithAMDisplayList_(AMDisplayList *displayList) NS_RETURNS_RETAINED;

__attribute__((unused)) static void AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher *self, IOSObjectArray *modifications);

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_ListSwitcher)

@interface AMDisplayList_ListSwitcher_$1 : NSObject < JavaLangRunnable > {
 @public
  AMDisplayList_ListSwitcher *this$0_;
  IOSObjectArray *val$modifications_;
}

- (void)run;

- (instancetype)initWithAMDisplayList_ListSwitcher:(AMDisplayList_ListSwitcher *)outer$
         withAMDisplayList_ModificationHolderArray:(IOSObjectArray *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_ListSwitcher_$1)

J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher_$1, this$0_, AMDisplayList_ListSwitcher *)
J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitcher_$1, val$modifications_, IOSObjectArray *)

__attribute__((unused)) static void AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher_$1 *self, AMDisplayList_ListSwitcher *outer$, IOSObjectArray *capture$0);

__attribute__((unused)) static AMDisplayList_ListSwitcher_$1 *new_AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher *outer$, IOSObjectArray *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_ListSwitcher_$1)

@interface AMDisplayList_ListSwitched : NSObject {
 @public
  IOSObjectArray *modifications_;
}

- (instancetype)initWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_ListSwitched)

J2OBJC_FIELD_SETTER(AMDisplayList_ListSwitched, modifications_, IOSObjectArray *)

__attribute__((unused)) static void AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitched *self, IOSObjectArray *modifications);

__attribute__((unused)) static AMDisplayList_ListSwitched *new_AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(IOSObjectArray *modifications) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_ListSwitched)

@interface AMDisplayList_EditList : NSObject {
 @public
  id<AMDisplayList_Modification> modification_;
  id<JavaLangRunnable> executeAfter_;
}

- (instancetype)initWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)modification
                              withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_EditList)

J2OBJC_FIELD_SETTER(AMDisplayList_EditList, modification_, id<AMDisplayList_Modification>)
J2OBJC_FIELD_SETTER(AMDisplayList_EditList, executeAfter_, id<JavaLangRunnable>)

__attribute__((unused)) static void AMDisplayList_EditList_initWithAMDisplayList_Modification_withJavaLangRunnable_(AMDisplayList_EditList *self, id<AMDisplayList_Modification> modification, id<JavaLangRunnable> executeAfter);

__attribute__((unused)) static AMDisplayList_EditList *new_AMDisplayList_EditList_initWithAMDisplayList_Modification_withJavaLangRunnable_(id<AMDisplayList_Modification> modification, id<JavaLangRunnable> executeAfter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_EditList)

@interface AMDisplayList_ModificationHolder : NSObject {
 @public
  id<AMDisplayList_Modification> modification_;
  id<JavaLangRunnable> executeAfter_;
}

- (instancetype)initWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)modification
                              withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_ModificationHolder)

J2OBJC_FIELD_SETTER(AMDisplayList_ModificationHolder, modification_, id<AMDisplayList_Modification>)
J2OBJC_FIELD_SETTER(AMDisplayList_ModificationHolder, executeAfter_, id<JavaLangRunnable>)

__attribute__((unused)) static void AMDisplayList_ModificationHolder_initWithAMDisplayList_Modification_withJavaLangRunnable_(AMDisplayList_ModificationHolder *self, id<AMDisplayList_Modification> modification, id<JavaLangRunnable> executeAfter);

__attribute__((unused)) static AMDisplayList_ModificationHolder *new_AMDisplayList_ModificationHolder_initWithAMDisplayList_Modification_withJavaLangRunnable_(id<AMDisplayList_Modification> modification, id<JavaLangRunnable> executeAfter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_ModificationHolder)

@interface AMDisplayList_$1 : NSObject < DKActorCreator > {
 @public
  AMDisplayList *this$0_;
}

- (AMDisplayList_ListSwitcher *)create;

- (instancetype)initWithAMDisplayList:(AMDisplayList *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayList_$1)

J2OBJC_FIELD_SETTER(AMDisplayList_$1, this$0_, AMDisplayList *)

__attribute__((unused)) static void AMDisplayList_$1_initWithAMDisplayList_(AMDisplayList_$1 *self, AMDisplayList *outer$);

__attribute__((unused)) static AMDisplayList_$1 *new_AMDisplayList_$1_initWithAMDisplayList_(AMDisplayList *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayList_$1)


#line 17
@implementation AMDisplayList


#line 28
- (instancetype)init {
  AMDisplayList_init(self);
  return self;
}


#line 32
- (instancetype)initWithAMDisplayList_Hook:(id<AMDisplayList_Hook>)hook {
  AMDisplayList_initWithAMDisplayList_Hook_(self, hook);
  return self;
}


#line 36
- (instancetype)initWithAMDisplayList_Hook:(id<AMDisplayList_Hook>)hook
                          withJavaUtilList:(id<JavaUtilList>)defaultValues {
  AMDisplayList_initWithAMDisplayList_Hook_withJavaUtilList_(self, hook, defaultValues);
  return self;
}


#line 56
- (jint)getSize {
  AMMVVMEngine_checkMainThread();
  return [((JavaUtilArrayList *) nil_chk(IOSObjectArray_Get(nil_chk(lists_), currentList_))) size];
}

- (id)getItemWithInt:(jint)index {
  AMMVVMEngine_checkMainThread();
  return [((JavaUtilArrayList *) nil_chk(IOSObjectArray_Get(nil_chk(lists_), currentList_))) getWithInt:index];
}

- (void)editListWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)mod {
  [self editListWithAMDisplayList_Modification:mod withJavaLangRunnable:nil];
}

- (void)editListWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)mod
                          withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter {
  [((DKActorRef *) nil_chk(self->executor_)) sendWithId:new_AMDisplayList_EditList_initWithAMDisplayList_Modification_withJavaLangRunnable_(mod, executeAfter)];
}


#line 74
- (void)addListenerWithAMDisplayList_Listener:(id<AMDisplayList_Listener>)listener {
  AMMVVMEngine_checkMainThread();
  if (![((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(listeners_)) containsWithId:listener]) {
    [listeners_ addWithId:listener];
  }
}

- (void)removeListenerWithAMDisplayList_Listener:(id<AMDisplayList_Listener>)listener {
  AMMVVMEngine_checkMainThread();
  [((JavaUtilConcurrentCopyOnWriteArrayList *) nil_chk(listeners_)) removeWithId:listener];
}

@end


#line 28
void AMDisplayList_init(AMDisplayList *self) {
  (void) AMDisplayList_initWithAMDisplayList_Hook_withJavaUtilList_(self, nil, new_JavaUtilArrayList_init());
}


#line 28
AMDisplayList *new_AMDisplayList_init() {
  AMDisplayList *self = [AMDisplayList alloc];
  AMDisplayList_init(self);
  return self;
}


#line 32
void AMDisplayList_initWithAMDisplayList_Hook_(AMDisplayList *self, id<AMDisplayList_Hook> hook) {
  (void) AMDisplayList_initWithAMDisplayList_Hook_withJavaUtilList_(self, hook, new_JavaUtilArrayList_init());
}


#line 32
AMDisplayList *new_AMDisplayList_initWithAMDisplayList_Hook_(id<AMDisplayList_Hook> hook) {
  AMDisplayList *self = [AMDisplayList alloc];
  AMDisplayList_initWithAMDisplayList_Hook_(self, hook);
  return self;
}


#line 36
void AMDisplayList_initWithAMDisplayList_Hook_withJavaUtilList_(AMDisplayList *self, id<AMDisplayList_Hook> hook, id<JavaUtilList> defaultValues) {
  (void) NSObject_init(self);
  self->listeners_ = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  
#line 37
  self->DISPLAY_LIST_ID_ = AMDisplayList_NEXT_ID_++;
  
#line 39
  self->hook_ = hook;
  self->executor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(AMDisplayList_ListSwitcher_class_(), new_AMDisplayList_$1_initWithAMDisplayList_(self)) withNSString:JreStrcat("$I", @"display_lists/", self->DISPLAY_LIST_ID_)];
  
#line 46
  self->lists_ = [IOSObjectArray newArrayWithLength:2 type:JavaUtilArrayList_class_()];
  
#line 48
  self->currentList_ = 0;
  (void) IOSObjectArray_Set(self->lists_, 0, new_JavaUtilArrayList_initWithJavaUtilCollection_(defaultValues));
  (void) IOSObjectArray_Set(self->lists_, 1, new_JavaUtilArrayList_initWithJavaUtilCollection_(defaultValues));
  if (hook != nil) {
    [hook beforeDisplayWithJavaUtilList:IOSObjectArray_Get(self->lists_, 0)];
  }
}


#line 36
AMDisplayList *new_AMDisplayList_initWithAMDisplayList_Hook_withJavaUtilList_(id<AMDisplayList_Hook> hook, id<JavaUtilList> defaultValues) {
  AMDisplayList *self = [AMDisplayList alloc];
  AMDisplayList_initWithAMDisplayList_Hook_withJavaUtilList_(self, hook, defaultValues);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList)

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AMDisplayList_Modification)

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AMDisplayList_Hook)


#line 96
@implementation AMDisplayList_ListSwitcher


#line 101
- (instancetype)initWithAMDisplayList:(AMDisplayList *)displayList {
  AMDisplayList_ListSwitcher_initWithAMDisplayList_(self, displayList);
  return self;
}


#line 105
- (void)onEditListWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)modification
                            withJavaLangRunnable:(id<JavaLangRunnable>)runnable {
  AMDisplayList_ModificationHolder *holder = new_AMDisplayList_ModificationHolder_initWithAMDisplayList_Modification_withJavaLangRunnable_(modification, runnable);
  if (isLocked_) {
    [((JavaUtilArrayList *) nil_chk(pending_)) addWithId:holder];
    return;
  }
  
#line 112
  JavaUtilArrayList *backgroundList = IOSObjectArray_Get(nil_chk(((AMDisplayList *) nil_chk(displayList_))->lists_), (displayList_->currentList_ + 1) % 2);
  
#line 114
  [((id<AMDisplayList_Modification>) nil_chk(modification)) modifyWithJavaUtilList:backgroundList];
  if (displayList_->hook_ != nil) {
    [displayList_->hook_ beforeDisplayWithJavaUtilList:backgroundList];
  }
  
#line 119
  AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_(self, [IOSObjectArray newArrayWithObjects:(id[]){ holder } count:1 type:AMDisplayList_ModificationHolder_class_()]);
}


#line 122
- (void)requestListSwitchWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications {
  AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_(self, modifications);
}


#line 145
- (void)onListSwitchedWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications {
  isLocked_ = NO;
  
#line 148
  JavaUtilArrayList *backgroundList = IOSObjectArray_Get(nil_chk(((AMDisplayList *) nil_chk(displayList_))->lists_), (displayList_->currentList_ + 1) % 2);
  {
    IOSObjectArray *a__ =
#line 149
    modifications;
    AMDisplayList_ModificationHolder * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    AMDisplayList_ModificationHolder * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      AMDisplayList_ModificationHolder *m = *b__++;
      
#line 150
      [((id<AMDisplayList_Modification>) nil_chk(((AMDisplayList_ModificationHolder *) nil_chk(m))->modification_)) modifyWithJavaUtilList:backgroundList];
    }
  }
  if ([((JavaUtilArrayList *) nil_chk(pending_)) size] > 0) {
    IOSObjectArray *dest = [pending_ toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[pending_ size] type:AMDisplayList_ModificationHolder_class_()]];
    [pending_ clear];
    {
      IOSObjectArray *a__ = dest;
      AMDisplayList_ModificationHolder * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      AMDisplayList_ModificationHolder * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        AMDisplayList_ModificationHolder *m = *b__++;
        
#line 158
        [((id<AMDisplayList_Modification>) nil_chk(((AMDisplayList_ModificationHolder *) nil_chk(m))->modification_)) modifyWithJavaUtilList:backgroundList];
      }
    }
    if (displayList_->hook_ != nil) {
      [displayList_->hook_ beforeDisplayWithJavaUtilList:backgroundList];
    }
    
#line 165
    AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_(self, dest);
  }
}


#line 170
- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[AMDisplayList_ListSwitched class]]) {
    [self onListSwitchedWithAMDisplayList_ModificationHolderArray:((AMDisplayList_ListSwitched *) nil_chk(((AMDisplayList_ListSwitched *) check_class_cast(message, [AMDisplayList_ListSwitched class]))))->modifications_];
  }
  else
#line 173
  if ([message isKindOfClass:[AMDisplayList_EditList class]]) {
    [self onEditListWithAMDisplayList_Modification:((AMDisplayList_EditList *) nil_chk(((AMDisplayList_EditList *) check_class_cast(message, [AMDisplayList_EditList class]))))->modification_ withJavaLangRunnable:((AMDisplayList_EditList *) nil_chk(((AMDisplayList_EditList *) check_class_cast(message, [AMDisplayList_EditList class]))))->executeAfter_];
  }
  else {
    
#line 176
    [self dropWithId:message];
  }
}

@end


#line 101
void AMDisplayList_ListSwitcher_initWithAMDisplayList_(AMDisplayList_ListSwitcher *self, AMDisplayList *displayList) {
  (void) DKActor_init(self);
  self->pending_ = new_JavaUtilArrayList_init();
  
#line 102
  self->displayList_ = displayList;
}


#line 101
AMDisplayList_ListSwitcher *new_AMDisplayList_ListSwitcher_initWithAMDisplayList_(AMDisplayList *displayList) {
  AMDisplayList_ListSwitcher *self = [AMDisplayList_ListSwitcher alloc];
  AMDisplayList_ListSwitcher_initWithAMDisplayList_(self, displayList);
  return self;
}


#line 122
void AMDisplayList_ListSwitcher_requestListSwitchWithAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher *self, IOSObjectArray *modifications) {
  self->isLocked_ = YES;
  AMMVVMEngine_runOnUiThreadWithJavaLangRunnable_(new_AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withAMDisplayList_ModificationHolderArray_(self, modifications));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_ListSwitcher)

@implementation AMDisplayList_ListSwitcher_$1


#line 126
- (void)run {
  
#line 128
  ((AMDisplayList *) nil_chk(this$0_->displayList_))->currentList_ = (this$0_->displayList_->currentList_ + 1) % 2;
  
#line 130
  for (id<AMDisplayList_Listener> __strong l in nil_chk(this$0_->displayList_->listeners_)) {
    [((id<AMDisplayList_Listener>) nil_chk(l)) onCollectionChanged];
  }
  {
    IOSObjectArray *a__ = val$modifications_;
    AMDisplayList_ModificationHolder * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    AMDisplayList_ModificationHolder * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      AMDisplayList_ModificationHolder *m = *b__++;
      
#line 135
      if (((AMDisplayList_ModificationHolder *) nil_chk(m))->executeAfter_ != nil) {
        [m->executeAfter_ run];
      }
    }
  }
  [((DKActorRef *) nil_chk([this$0_ self__])) sendWithId:new_AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(val$modifications_)];
}

- (instancetype)initWithAMDisplayList_ListSwitcher:(AMDisplayList_ListSwitcher *)outer$
         withAMDisplayList_ModificationHolderArray:(IOSObjectArray *)capture$0 {
  AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withAMDisplayList_ModificationHolderArray_(self, outer$, capture$0);
  return self;
}

@end

void AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher_$1 *self, AMDisplayList_ListSwitcher *outer$, IOSObjectArray *capture$0) {
  self->this$0_ = outer$;
  self->val$modifications_ = capture$0;
  (void) NSObject_init(self);
}

AMDisplayList_ListSwitcher_$1 *new_AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitcher *outer$, IOSObjectArray *capture$0) {
  AMDisplayList_ListSwitcher_$1 *self = [AMDisplayList_ListSwitcher_$1 alloc];
  AMDisplayList_ListSwitcher_$1_initWithAMDisplayList_ListSwitcher_withAMDisplayList_ModificationHolderArray_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_ListSwitcher_$1)


#line 181
@implementation AMDisplayList_ListSwitched


#line 184
- (instancetype)initWithAMDisplayList_ModificationHolderArray:(IOSObjectArray *)modifications {
  AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(self, modifications);
  return self;
}

@end


#line 184
void AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(AMDisplayList_ListSwitched *self, IOSObjectArray *modifications) {
  (void) NSObject_init(self);
  
#line 185
  self->modifications_ = modifications;
}


#line 184
AMDisplayList_ListSwitched *new_AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(IOSObjectArray *modifications) {
  AMDisplayList_ListSwitched *self = [AMDisplayList_ListSwitched alloc];
  AMDisplayList_ListSwitched_initWithAMDisplayList_ModificationHolderArray_(self, modifications);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_ListSwitched)


#line 189
@implementation AMDisplayList_EditList


#line 193
- (instancetype)initWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)modification
                              withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter {
  AMDisplayList_EditList_initWithAMDisplayList_Modification_withJavaLangRunnable_(self, modification, executeAfter);
  return self;
}

@end


#line 193
void AMDisplayList_EditList_initWithAMDisplayList_Modification_withJavaLangRunnable_(AMDisplayList_EditList *self, id<AMDisplayList_Modification> modification, id<JavaLangRunnable> executeAfter) {
  (void) NSObject_init(self);
  
#line 194
  self->modification_ = modification;
  self->executeAfter_ = executeAfter;
}


#line 193
AMDisplayList_EditList *new_AMDisplayList_EditList_initWithAMDisplayList_Modification_withJavaLangRunnable_(id<AMDisplayList_Modification> modification, id<JavaLangRunnable> executeAfter) {
  AMDisplayList_EditList *self = [AMDisplayList_EditList alloc];
  AMDisplayList_EditList_initWithAMDisplayList_Modification_withJavaLangRunnable_(self, modification, executeAfter);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_EditList)


#line 199
@implementation AMDisplayList_ModificationHolder


#line 203
- (instancetype)initWithAMDisplayList_Modification:(id<AMDisplayList_Modification>)modification
                              withJavaLangRunnable:(id<JavaLangRunnable>)executeAfter {
  AMDisplayList_ModificationHolder_initWithAMDisplayList_Modification_withJavaLangRunnable_(self, modification, executeAfter);
  return self;
}

@end


#line 203
void AMDisplayList_ModificationHolder_initWithAMDisplayList_Modification_withJavaLangRunnable_(AMDisplayList_ModificationHolder *self, id<AMDisplayList_Modification> modification, id<JavaLangRunnable> executeAfter) {
  (void) NSObject_init(self);
  
#line 204
  self->modification_ = modification;
  self->executeAfter_ = executeAfter;
}


#line 203
AMDisplayList_ModificationHolder *new_AMDisplayList_ModificationHolder_initWithAMDisplayList_Modification_withJavaLangRunnable_(id<AMDisplayList_Modification> modification, id<JavaLangRunnable> executeAfter) {
  AMDisplayList_ModificationHolder *self = [AMDisplayList_ModificationHolder alloc];
  AMDisplayList_ModificationHolder_initWithAMDisplayList_Modification_withJavaLangRunnable_(self, modification, executeAfter);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_ModificationHolder)

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(AMDisplayList_Listener)

@implementation AMDisplayList_$1


#line 42
- (AMDisplayList_ListSwitcher *)create {
  return new_AMDisplayList_ListSwitcher_initWithAMDisplayList_(this$0_);
}

- (instancetype)initWithAMDisplayList:(AMDisplayList *)outer$ {
  AMDisplayList_$1_initWithAMDisplayList_(self, outer$);
  return self;
}

@end

void AMDisplayList_$1_initWithAMDisplayList_(AMDisplayList_$1 *self, AMDisplayList *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

AMDisplayList_$1 *new_AMDisplayList_$1_initWithAMDisplayList_(AMDisplayList *outer$) {
  AMDisplayList_$1 *self = [AMDisplayList_$1 alloc];
  AMDisplayList_$1_initWithAMDisplayList_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDisplayList_$1)