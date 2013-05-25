//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/RealtimeTransformer.java
//
//  Created by retechretech on 13-5-25.
//

@class ComGoodowRealtimeOperationListAlgorithmListOpCollector;
@class ComGoodowRealtimeOperationRealtimeOperation;
@class ComGoodowRealtimeUtilPair;
@class GDRDocumentBridge;
@protocol ComGoodowRealtimeOperationOperation;
@protocol EMJsonArray;
@protocol EMJsonValue;
@protocol ElementalUtilArrayOf;

#import "JreEmulation.h"
#import "com/goodow/realtime/operation/Transformer.h"

@interface ComGoodowRealtimeOperationRealtimeTransformer : NSObject < ComGoodowRealtimeOperationTransformer > {
}

- (id<ElementalUtilArrayOf>)composeWithElementalUtilArrayOf:(id<ElementalUtilArrayOf>)ops;
- (id<ComGoodowRealtimeOperationOperation>)createOpWithEMJsonArray:(id<EMJsonArray>)serialized;
- (ComGoodowRealtimeOperationRealtimeOperation *)createOperationWithEMJsonValue:(id<EMJsonValue>)serialized
                                                                   withNSString:(NSString *)userId
                                                                   withNSString:(NSString *)sessionId;
- (GDRDocumentBridge *)createSnapshotWithEMJsonValue:(id<EMJsonValue>)serialized;
- (ComGoodowRealtimeUtilPair *)transformWithElementalUtilArrayOf:(id<ElementalUtilArrayOf>)serverOps
                                        withElementalUtilArrayOf:(id<ElementalUtilArrayOf>)clientOps;
- (void)composeListOpsWithElementalUtilArrayOf:(id<ElementalUtilArrayOf>)ops
withComGoodowRealtimeOperationListAlgorithmListOpCollector:(ComGoodowRealtimeOperationListAlgorithmListOpCollector *)collector;
- (id)init;
@end