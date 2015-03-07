//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/impl/CollaborativeTransformer.java
//

#ifndef _ComGoodowRealtimeOperationImplCollaborativeTransformer_H_
#define _ComGoodowRealtimeOperationImplCollaborativeTransformer_H_

@class ComGoodowRealtimeOperationImplAbstractComponent;
@class ComGoodowRealtimeOperationImplCollaborativeOperation;
@class ComGoodowRealtimeOperationOperationComponent;
@class ComGoodowRealtimeOperationUtilPair;
@protocol ComGoodowRealtimeJsonJsonArray;
@protocol ComGoodowRealtimeJsonJsonObject;
@protocol ComGoodowRealtimeOperationOperation;

#include "J2ObjC_header.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/Transformer.h"

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer : NSObject < ComGoodowRealtimeOperationTransformer > {
}

- (ComGoodowRealtimeOperationImplCollaborativeOperation *)composeWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)operations;

- (ComGoodowRealtimeOperationImplAbstractComponent *)createComponentWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized;

- (ComGoodowRealtimeOperationImplCollaborativeOperation *)createOperationWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)opData;

- (ComGoodowRealtimeOperationUtilPair *)transformWithComGoodowRealtimeOperationOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation
                                                 withComGoodowRealtimeOperationOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)appliedOperation;

- (ComGoodowRealtimeOperationUtilPair *)transformWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)operations
                                                 withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)appliedOperations;

- (void)transformWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)transformedResults
            withComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)operation
                 withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)others
                                            withInt:(jint)startIndex
                                        withBoolean:(jboolean)applied;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeOperationImplCollaborativeTransformer)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeOperationImplCollaborativeTransformer)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
}

- (void)callWithInt:(jint)index
             withId:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation;

- (instancetype)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
}

- (void)callWithInt:(jint)index
             withId:(ComGoodowRealtimeOperationOperationComponent *)component;

- (instancetype)initWithComGoodowRealtimeOperationImplCollaborativeTransformer_$1:(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$2 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
}

- (void)callWithInt:(jint)index
             withId:(id<ComGoodowRealtimeJsonJsonArray>)component;

- (instancetype)initWithComGoodowRealtimeOperationImplCollaborativeTransformer:(ComGoodowRealtimeOperationImplCollaborativeTransformer *)outer$
                                            withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeOperationImplCollaborativeTransformer_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$2)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$3 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
}

- (void)callWithInt:(jint)index
             withId:(id<ComGoodowRealtimeOperationOperation>)operation;

- (instancetype)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeOperationImplCollaborativeTransformer_$3)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$3)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$4 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
}

- (void)callWithInt:(jint)index
             withId:(id<ComGoodowRealtimeOperationOperation>)operation;

- (instancetype)initWithComGoodowRealtimeOperationImplCollaborativeTransformer:(ComGoodowRealtimeOperationImplCollaborativeTransformer *)outer$
                                            withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0
                                            withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeOperationImplCollaborativeTransformer_$4)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$4)

#endif // _ComGoodowRealtimeOperationImplCollaborativeTransformer_H_
