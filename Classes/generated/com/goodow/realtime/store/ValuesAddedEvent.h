//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/ValuesAddedEvent.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreValuesAddedEvent_H_
#define _ComGoodowRealtimeStoreValuesAddedEvent_H_

@protocol ComGoodowRealtimeJsonJsonArray;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/BaseModelEvent.h"

@protocol ComGoodowRealtimeStoreValuesAddedEvent < ComGoodowRealtimeStoreBaseModelEvent, NSObject, JavaObject >
- (int)index;

- (id<ComGoodowRealtimeJsonJsonArray>)values;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreValuesAddedEvent_init() {}

#endif // _ComGoodowRealtimeStoreValuesAddedEvent_H_
