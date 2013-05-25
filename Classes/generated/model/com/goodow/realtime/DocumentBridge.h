//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/DocumentBridge.java
//
//  Created by retechretech on 13-5-25.
//

@class ComGoodowRealtimeOperationRealtimeOperation;
@class ComGoodowRealtimeOperationRealtimeTransformer;
@class GDRDocument;
@class GDRDocumentSaveStateChangedEvent;
@class GDRModel;
@protocol ComGoodowRealtimeOperationOperation;
@protocol EMJsonArray;

#import "JreEmulation.h"
#import "com/goodow/realtime/operation/OperationSink.h"

@interface GDRDocumentBridge : NSObject < ComGoodowRealtimeOperationOperationSink > {
 @public
  NSString *sessionId_;
  NSString *userId_;
  id<ComGoodowRealtimeOperationOperationSink> outputSink_;
  GDRDocument *document_;
  GDRModel *model_;
  ComGoodowRealtimeOperationRealtimeTransformer *transformer_;
}

@property (nonatomic, copy) NSString *sessionId;
@property (nonatomic, copy) NSString *userId;
@property (nonatomic, strong) id<ComGoodowRealtimeOperationOperationSink> outputSink;
@property (nonatomic, strong) GDRDocument *document;
@property (nonatomic, strong) GDRModel *model;
@property (nonatomic, strong) ComGoodowRealtimeOperationRealtimeTransformer *transformer;

+ (id<ComGoodowRealtimeOperationOperationSink>)VOID;
- (id)init;
- (id)initWithEMJsonArray:(id<EMJsonArray>)snapshot;
- (void)consumeWithId:(ComGoodowRealtimeOperationRealtimeOperation *)operation;
- (void)createRoot;
- (void)fireDocumentSaveStateChangedEventWithGDRDocumentSaveStateChangedEvent:(GDRDocumentSaveStateChangedEvent *)event;
- (NSString *)description;
- (void)consumeAndSubmitWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)op;
- (BOOL)isLocalSessionWithNSString:(NSString *)sessionId;
@end

typedef GDRDocumentBridge ComGoodowRealtimeDocumentBridge;

@interface GDRDocumentBridge_$1 : NSObject < ComGoodowRealtimeOperationOperationSink > {
}

- (void)consumeWithId:(ComGoodowRealtimeOperationRealtimeOperation *)op;
- (NSString *)description;
- (id)init;
@end