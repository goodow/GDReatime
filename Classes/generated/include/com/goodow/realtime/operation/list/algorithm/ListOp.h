//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/list/algorithm/ListOp.java
//
//  Created by retechretech on 13-5-25.
//

@class ComGoodowRealtimeOperationListAlgorithmListOpCollector;
@class ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum;
@class ComGoodowRealtimeUtilPair;
@protocol ComGoodowRealtimeOperationListAlgorithmListHelper;
@protocol EMJsonArray;
@protocol EMJsonValue;
@protocol ElementalUtilArrayOf;

#import "JreEmulation.h"
#import "com/goodow/realtime/operation/Operation.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOp.h"
#import "com/goodow/realtime/operation/list/algorithm/ListTarget.h"
#import "java/lang/Enum.h"

#define ComGoodowRealtimeOperationListAlgorithmListOp_TYPE 5

@interface ComGoodowRealtimeOperationListAlgorithmListOp : NSObject < ComGoodowRealtimeOperationOperation, ComGoodowRealtimeOperationListAlgorithmListTarget > {
 @public
  BOOL frozen_;
  id<ElementalUtilArrayOf> components_;
  id<ComGoodowRealtimeOperationListAlgorithmListHelper> helper_;
  NSString *id__;
}

@property (nonatomic, assign) BOOL frozen;
@property (nonatomic, retain) id<ElementalUtilArrayOf> components;
@property (nonatomic, retain) id<ComGoodowRealtimeOperationListAlgorithmListHelper> helper;
@property (nonatomic, copy) NSString *id_;

+ (int)TYPE;
- (id)init;
- (id)initWithBOOL:(BOOL)isInsert
           withInt:(int)idx
            withId:(id)list
           withInt:(int)initLength;
- (id)initWithEMJsonArray:(id<EMJsonArray>)serialized;
- (void)applyWithId:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target;
- (ComGoodowRealtimeOperationListAlgorithmListOp *)composeWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)op;
- (ComGoodowRealtimeOperationListAlgorithmListOpCollector *)createOpCollector;
- (ComGoodowRealtimeOperationListAlgorithmListOp *)delete__WithId:(id)list;
- (BOOL)isEqual:(id)obj;
- (NSString *)getId;
- (int)getType;
- (ComGoodowRealtimeOperationListAlgorithmListOp *)insertWithId:(id)list;
- (ComGoodowRealtimeOperationListAlgorithmListOp *)invert;
- (BOOL)isNoOp;
- (ComGoodowRealtimeOperationListAlgorithmListOp *)retain__WithInt:(int)length;
- (void)setIdWithNSString:(NSString *)id_;
- (NSString *)description;
- (ComGoodowRealtimeUtilPair *)transformWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)clientOp;
- (id<ComGoodowRealtimeOperationListAlgorithmListHelper>)createListHelper;
- (id)fromJsonWithEMJsonValue:(id<EMJsonValue>)json;
- (NSString *)toJsonWithId:(id)list;
- (void)applyComponentWithInt:(int)i
withComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target;
- (int)size;
- (id<ComGoodowRealtimeOperationListAlgorithmListHelper>)getListHelper;
@end

typedef enum {
  ComGoodowRealtimeOperationListAlgorithmListOp_ComponentType_INSERT = 0,
  ComGoodowRealtimeOperationListAlgorithmListOp_ComponentType_DELETE = 1,
  ComGoodowRealtimeOperationListAlgorithmListOp_ComponentType_RETAIN = 2,
} ComGoodowRealtimeOperationListAlgorithmListOp_ComponentType;

@interface ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum : JavaLangEnum < NSCopying > {
}
+ (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)INSERT;
+ (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)DELETE;
+ (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)RETAIN;
+ (IOSObjectArray *)values;
+ (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)valueOfWithNSString:(NSString *)name;
- (id)copyWithZone:(NSZone *)zone;
- (id)initWithNSString:(NSString *)name withInt:(int)ordinal;
@end

@protocol ComGoodowRealtimeOperationListAlgorithmListOp_Component < NSObject >
- (void)applyWithComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target;
- (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)getComponentType;
@end

@interface ComGoodowRealtimeOperationListAlgorithmListOp_Delete : NSObject < ComGoodowRealtimeOperationListAlgorithmListOp_Component > {
 @public
  ComGoodowRealtimeOperationListAlgorithmListOp *this$0_;
  id list_;
}

@property (nonatomic, retain) ComGoodowRealtimeOperationListAlgorithmListOp *this$0;
@property (nonatomic, retain) id list;

+ (NSString *)KEY;
- (id)initWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)outer$
                                                     withId:(id)list;
- (void)applyWithComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target;
- (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)getComponentType;
- (NSString *)description;
@end

@interface ComGoodowRealtimeOperationListAlgorithmListOp_Insert : NSObject < ComGoodowRealtimeOperationListAlgorithmListOp_Component > {
 @public
  ComGoodowRealtimeOperationListAlgorithmListOp *this$0_;
  id list_;
}

@property (nonatomic, retain) ComGoodowRealtimeOperationListAlgorithmListOp *this$0;
@property (nonatomic, retain) id list;

+ (NSString *)KEY;
- (id)initWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)outer$
                                                     withId:(id)list;
- (void)applyWithComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target;
- (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)getComponentType;
- (NSString *)description;
@end

@interface ComGoodowRealtimeOperationListAlgorithmListOp_Retain : NSObject < ComGoodowRealtimeOperationListAlgorithmListOp_Component > {
 @public
  int length_;
}

@property (nonatomic, assign) int length;

- (id)initWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)outer$
                                                    withInt:(int)length;
- (void)applyWithComGoodowRealtimeOperationListAlgorithmListTarget:(id<ComGoodowRealtimeOperationListAlgorithmListTarget>)target;
- (ComGoodowRealtimeOperationListAlgorithmListOp_ComponentTypeEnum *)getComponentType;
- (NSString *)description;
@end