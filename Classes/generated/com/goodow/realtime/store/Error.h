//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/Error.java
//

#ifndef _ComGoodowRealtimeStoreError_H_
#define _ComGoodowRealtimeStoreError_H_

@class ComGoodowRealtimeStoreErrorTypeEnum;

#include "J2ObjC_header.h"

@protocol ComGoodowRealtimeStoreError < NSObject, JavaObject >

- (jboolean)isFatal;

- (NSString *)message;

- (ComGoodowRealtimeStoreErrorTypeEnum *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeStoreError)

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeStoreError)

#endif // _ComGoodowRealtimeStoreError_H_
