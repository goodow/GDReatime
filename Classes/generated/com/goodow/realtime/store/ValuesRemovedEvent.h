//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/ValuesRemovedEvent.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreValuesRemovedEvent_H_
#define _ComGoodowRealtimeStoreValuesRemovedEvent_H_

@protocol ComGoodowRealtimeJsonJsonArray;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/BaseModelEvent.h"

@protocol ComGoodowRealtimeStoreValuesRemovedEvent < ComGoodowRealtimeStoreBaseModelEvent, NSObject, JavaObject >
- (int)index;

- (id<ComGoodowRealtimeJsonJsonArray>)values;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreValuesRemovedEvent_init() {}

#endif // _ComGoodowRealtimeStoreValuesRemovedEvent_H_
