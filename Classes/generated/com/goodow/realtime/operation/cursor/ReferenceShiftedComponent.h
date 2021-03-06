//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/cursor/ReferenceShiftedComponent.java
//

#ifndef _ComGoodowRealtimeOperationCursorReferenceShiftedComponent_H_
#define _ComGoodowRealtimeOperationCursorReferenceShiftedComponent_H_

@class JavaLangVoid;
@protocol ComGoodowRealtimeJsonJsonArray;
@protocol ComGoodowRealtimeOperationOperation;

#include "J2ObjC_header.h"
#include "com/goodow/realtime/operation/impl/AbstractComponent.h"

#define ComGoodowRealtimeOperationCursorReferenceShiftedComponent_TYPE 25

@interface ComGoodowRealtimeOperationCursorReferenceShiftedComponent : ComGoodowRealtimeOperationImplAbstractComponent {
 @public
  NSString *referencedObjectId_;
  jint newIndex_;
  jboolean canBeDeleted_;
  jint oldIndex_;
}

+ (ComGoodowRealtimeOperationCursorReferenceShiftedComponent *)parseWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized;

- (instancetype)initWithNSString:(NSString *)id_
                    withNSString:(NSString *)referencedObjectId
                         withInt:(jint)newIndex
                     withBoolean:(jboolean)canBeDeleted
                         withInt:(jint)oldIndex;

- (void)applyWithId:(id)target;

- (ComGoodowRealtimeOperationCursorReferenceShiftedComponent *)invert;

- (ComGoodowRealtimeOperationCursorReferenceShiftedComponent *)transformWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)other
                                                                                                    withBoolean:(jboolean)applied;

- (void)toJsonWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)json;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeOperationCursorReferenceShiftedComponent)

J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationCursorReferenceShiftedComponent, referencedObjectId_, NSString *)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ComGoodowRealtimeOperationCursorReferenceShiftedComponent *ComGoodowRealtimeOperationCursorReferenceShiftedComponent_parseWithComGoodowRealtimeJsonJsonArray_(id<ComGoodowRealtimeJsonJsonArray> serialized);

J2OBJC_STATIC_FIELD_GETTER(ComGoodowRealtimeOperationCursorReferenceShiftedComponent, TYPE, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeOperationCursorReferenceShiftedComponent)

#endif // _ComGoodowRealtimeOperationCursorReferenceShiftedComponent_H_
