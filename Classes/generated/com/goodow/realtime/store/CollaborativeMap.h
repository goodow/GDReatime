//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/CollaborativeMap.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreCollaborativeMap_H_
#define _ComGoodowRealtimeStoreCollaborativeMap_H_

@protocol ComGoodowRealtimeCoreHandler;
@protocol ComGoodowRealtimeCoreRegistration;
@protocol ComGoodowRealtimeJsonJsonArray;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/CollaborativeObject.h"

@protocol ComGoodowRealtimeStoreCollaborativeMap < ComGoodowRealtimeStoreCollaborativeObject, NSObject, JavaObject >
- (id<ComGoodowRealtimeCoreRegistration>)onValueChangedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler;

- (void)clear;

- (id)getWithNSString:(NSString *)key;

- (BOOL)hasWithNSString:(NSString *)key;

- (BOOL)isEmpty;

- (id<ComGoodowRealtimeJsonJsonArray>)items;

- (id<ComGoodowRealtimeJsonJsonArray>)keys;

- (id)removeWithNSString:(NSString *)key;

- (id)setWithNSString:(NSString *)key
               withId:(id)value;

- (id<ComGoodowRealtimeJsonJsonArray>)values;

- (int)size;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreCollaborativeMap_init() {}

#endif // _ComGoodowRealtimeStoreCollaborativeMap_H_