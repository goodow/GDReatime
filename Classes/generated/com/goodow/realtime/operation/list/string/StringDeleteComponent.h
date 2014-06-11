//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/string/StringDeleteComponent.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeOperationListStringStringDeleteComponent_H_
#define _ComGoodowRealtimeOperationListStringStringDeleteComponent_H_

@class ComGoodowRealtimeOperationListStringStringHelper;
@class ComGoodowRealtimeOperationListStringStringInsertComponent;
@protocol ComGoodowRealtimeJsonJsonArray;

#import "JreEmulation.h"
#include "com/goodow/realtime/operation/list/AbstractDeleteComponent.h"

@interface ComGoodowRealtimeOperationListStringStringDeleteComponent : ComGoodowRealtimeOperationListAbstractDeleteComponent {
}

+ (ComGoodowRealtimeOperationListStringStringDeleteComponent *)parseWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized;

- (id)initWithNSString:(NSString *)id_
               withInt:(int)startIndex
               withInt:(int)length;

- (id)initWithNSString:(NSString *)id_
               withInt:(int)startIndex
          withNSString:(NSString *)values;

- (ComGoodowRealtimeOperationListStringStringInsertComponent *)invert;

- (ComGoodowRealtimeOperationListStringStringDeleteComponent *)createWithInt:(int)startIndex
                                                                     withInt:(int)length;

- (ComGoodowRealtimeOperationListStringStringDeleteComponent *)createWithInt:(int)startIndex
                                                                      withId:(NSString *)values;

- (ComGoodowRealtimeOperationListStringStringHelper *)getHelper;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeOperationListStringStringDeleteComponent_init() {}

#endif // _ComGoodowRealtimeOperationListStringStringDeleteComponent_H_
