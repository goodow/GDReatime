//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/custom/Custom.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreCustomCustom_H_
#define _ComGoodowRealtimeStoreCustomCustom_H_

@protocol ComGoodowRealtimeCoreHandler;
@protocol ComGoodowRealtimeStoreModel;

#import "JreEmulation.h"

@interface ComGoodowRealtimeStoreCustomCustom : NSObject {
}

+ (id)collaborativeFieldWithNSString:(NSString *)name;

+ (NSString *)getIdWithId:(id)obj;

+ (id<ComGoodowRealtimeStoreModel>)getModelWithId:(id)obj;

+ (BOOL)isCustomObjectWithId:(id)obj;

+ (void)registerTypeWithId:(id)type
              withNSString:(NSString *)name;

+ (void)setInitializerWithId:(id)type
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)initializer;

+ (void)setOnLoadedWithId:(id)type
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)opt_onLoaded;

- (id)init;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreCustomCustom_init() {}

#endif // _ComGoodowRealtimeStoreCustomCustom_H_