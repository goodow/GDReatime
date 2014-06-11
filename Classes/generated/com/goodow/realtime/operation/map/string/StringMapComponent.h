//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/map/string/StringMapComponent.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeOperationMapStringStringMapComponent_H_
#define _ComGoodowRealtimeOperationMapStringStringMapComponent_H_

@protocol ComGoodowRealtimeJsonJsonArray;

#import "JreEmulation.h"
#include "com/goodow/realtime/operation/map/AbstractMapComponent.h"

@interface ComGoodowRealtimeOperationMapStringStringMapComponent : ComGoodowRealtimeOperationMapAbstractMapComponent {
}

+ (ComGoodowRealtimeOperationMapStringStringMapComponent *)parseWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized;

- (id)initWithNSString:(NSString *)id_
          withNSString:(NSString *)key
          withNSString:(NSString *)oldValue
          withNSString:(NSString *)newValue;

- (ComGoodowRealtimeOperationMapStringStringMapComponent *)invert;

- (ComGoodowRealtimeOperationMapStringStringMapComponent *)createWithNSString:(NSString *)id_
                                                                 withNSString:(NSString *)key
                                                                       withId:(NSString *)oldValue
                                                                       withId:(NSString *)newValue;

- (void)toJsonWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)json;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeOperationMapStringStringMapComponent_init() {}

#endif // _ComGoodowRealtimeOperationMapStringStringMapComponent_H_