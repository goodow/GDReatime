//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/CreateOperation.java
//
//  Created by retechretech on 13-5-25.
//

@class ComGoodowRealtimeUtilPair;
@class GDRDocumentBridge;
@protocol EMJsonArray;

#import "JreEmulation.h"
#import "com/goodow/realtime/operation/Operation.h"

#define ComGoodowRealtimeOperationCreateOperation_COLLABORATIVE_LIST 1
#define ComGoodowRealtimeOperationCreateOperation_COLLABORATIVE_MAP 0
#define ComGoodowRealtimeOperationCreateOperation_COLLABORATIVE_STRING 2
#define ComGoodowRealtimeOperationCreateOperation_INDEX_REFERENCE 4
#define ComGoodowRealtimeOperationCreateOperation_TYPE 7

@interface ComGoodowRealtimeOperationCreateOperation : NSObject < ComGoodowRealtimeOperationOperation > {
 @public
  int type_;
  NSString *id__;
}

@property (nonatomic, assign) int type;
@property (nonatomic, copy) NSString *id_;

+ (int)TYPE;
+ (int)COLLABORATIVE_MAP;
+ (int)COLLABORATIVE_LIST;
+ (int)COLLABORATIVE_STRING;
+ (int)INDEX_REFERENCE;
- (id)initWithInt:(int)type
     withNSString:(NSString *)id_;
- (id)initWithEMJsonArray:(id<EMJsonArray>)serialized;
- (void)applyWithId:(GDRDocumentBridge *)target;
- (ComGoodowRealtimeOperationCreateOperation *)composeWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)op;
- (BOOL)isEqual:(id)obj;
- (NSString *)getId;
- (int)getType;
- (NSUInteger)hash;
- (id<ComGoodowRealtimeOperationOperation>)invert;
- (BOOL)isNoOp;
- (void)setIdWithNSString:(NSString *)id_;
- (NSString *)description;
- (ComGoodowRealtimeUtilPair *)transformWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)clientOp;
@end