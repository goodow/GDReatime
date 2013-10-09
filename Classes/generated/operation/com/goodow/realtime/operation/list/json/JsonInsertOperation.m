//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSObjectArray.h"
#include "com/goodow/realtime/operation/AbstractOperation.h"
#include "com/goodow/realtime/operation/list/AbstractInsertOperation.h"
#include "com/goodow/realtime/operation/list/AbstractListOperation.h"
#include "com/goodow/realtime/operation/list/json/JsonDeleteOperation.h"
#include "com/goodow/realtime/operation/list/json/JsonHelper.h"
#include "com/goodow/realtime/operation/list/json/JsonInsertOperation.h"
#include "elemental/json/JsonArray.h"

@implementation ComGoodowRealtimeOperationListJsonJsonInsertOperation

+ (ComGoodowRealtimeOperationListJsonJsonInsertOperation *)parseWithGDRJsonArray:(id<GDRJsonArray>)serialized {
  NSAssert([((id<GDRJsonArray>) nil_chk(serialized)) getNumberWithInt:0] == ComGoodowRealtimeOperationListAbstractInsertOperation_TYPE && [serialized length] == 4, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/json/JsonInsertOperation.java:23 condition failed: assert serialized.getNumber(0) == TYPE && serialized.length() == 4;");
  IOSObjectArray *values = [((ComGoodowRealtimeOperationListJsonJsonHelper *) nil_chk([ComGoodowRealtimeOperationListJsonJsonHelper INSTANCE])) parseValuesWithGDRJsonArray:[serialized getArrayWithInt:3]];
  return [[ComGoodowRealtimeOperationListJsonJsonInsertOperation alloc] initWithNSString:[ComGoodowRealtimeOperationAbstractOperation parseIdWithGDRJsonArray:serialized] withInt:[ComGoodowRealtimeOperationListAbstractListOperation parseStartIndexWithGDRJsonArray:serialized] withId:values];
}

- (id)initWithNSString:(NSString *)id_
               withInt:(int)startIndex
 withGDRJsonValueArray:(IOSObjectArray *)values {
  return [super initWithNSString:id_ withInt:startIndex withId:values];
}

- (ComGoodowRealtimeOperationListJsonJsonDeleteOperation *)invert {
  return [[ComGoodowRealtimeOperationListJsonJsonDeleteOperation alloc] initWithNSString:id__ withInt:startIndex_ withId:values_];
}

- (ComGoodowRealtimeOperationListJsonJsonInsertOperation *)createWithInt:(int)startIndex
                                                                  withId:(IOSObjectArray *)values {
  return [[ComGoodowRealtimeOperationListJsonJsonInsertOperation alloc] initWithNSString:id__ withInt:startIndex withId:values];
}

- (ComGoodowRealtimeOperationListJsonJsonHelper *)getHelper {
  return [ComGoodowRealtimeOperationListJsonJsonHelper INSTANCE];
}

@end