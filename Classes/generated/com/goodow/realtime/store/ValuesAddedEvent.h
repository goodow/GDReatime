//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/ValuesAddedEvent.java
//

#ifndef _ComGoodowRealtimeStoreValuesAddedEvent_H_
#define _ComGoodowRealtimeStoreValuesAddedEvent_H_

@protocol ComGoodowRealtimeJsonJsonArray;

#include "J2ObjC_header.h"
#include "com/goodow/realtime/store/BaseModelEvent.h"

@protocol ComGoodowRealtimeStoreValuesAddedEvent < ComGoodowRealtimeStoreBaseModelEvent, NSObject, JavaObject >
- (jint)index;

- (id<ComGoodowRealtimeJsonJsonArray>)values;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeStoreValuesAddedEvent)

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeStoreValuesAddedEvent)

#endif // _ComGoodowRealtimeStoreValuesAddedEvent_H_
