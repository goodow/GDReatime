//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/Transformer.java
//
//  Created by retechretech on 13-5-25.
//

@class ComGoodowRealtimeUtilPair;
@protocol ComGoodowRealtimeOperationOperation;
@protocol ComGoodowRealtimeOperationOperationSink;
@protocol EMJsonValue;
@protocol ElementalUtilArrayOf;

#import "JreEmulation.h"

@protocol ComGoodowRealtimeOperationTransformer < NSObject >
- (id<ElementalUtilArrayOf>)composeWithElementalUtilArrayOf:(id<ElementalUtilArrayOf>)ops;
- (id)createOperationWithEMJsonValue:(id<EMJsonValue>)serialized
                        withNSString:(NSString *)userId
                        withNSString:(NSString *)sessionId;
- (id<ComGoodowRealtimeOperationOperationSink>)createSnapshotWithEMJsonValue:(id<EMJsonValue>)serialized;
- (ComGoodowRealtimeUtilPair *)transformWithElementalUtilArrayOf:(id<ElementalUtilArrayOf>)serverOps
                                        withElementalUtilArrayOf:(id<ElementalUtilArrayOf>)clientOps;
@end