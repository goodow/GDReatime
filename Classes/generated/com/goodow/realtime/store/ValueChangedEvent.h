//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/ValueChangedEvent.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreValueChangedEvent_H_
#define _ComGoodowRealtimeStoreValueChangedEvent_H_

#import "JreEmulation.h"
#include "com/goodow/realtime/store/BaseModelEvent.h"

@protocol ComGoodowRealtimeStoreValueChangedEvent < ComGoodowRealtimeStoreBaseModelEvent, NSObject, JavaObject >
- (id)newValue OBJC_METHOD_FAMILY_NONE;

- (id)oldValue;

- (NSString *)property;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreValueChangedEvent_init() {}

#endif // _ComGoodowRealtimeStoreValueChangedEvent_H_
