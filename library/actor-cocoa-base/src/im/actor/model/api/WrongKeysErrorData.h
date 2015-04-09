//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/WrongKeysErrorData.java
//

#ifndef _ImActorModelApiWrongKeysErrorData_H_
#define _ImActorModelApiWrongKeysErrorData_H_

@class BSBserValues;
@class BSBserWriter;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiWrongKeysErrorData : BSBserObject {
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)newKeys
                    withJavaUtilList:(id<JavaUtilList>)removedKeys
                    withJavaUtilList:(id<JavaUtilList>)invalidKeys;

- (instancetype)init;

- (id<JavaUtilList>)getNewKeys;

- (id<JavaUtilList>)getRemovedKeys;

- (id<JavaUtilList>)getInvalidKeys;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiWrongKeysErrorData)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiWrongKeysErrorData)

#endif // _ImActorModelApiWrongKeysErrorData_H_