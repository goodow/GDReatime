//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/DocumentSaveStateChangedEvent.java
//

#ifndef _ComGoodowRealtimeStoreDocumentSaveStateChangedEvent_H_
#define _ComGoodowRealtimeStoreDocumentSaveStateChangedEvent_H_

@class ComGoodowRealtimeStoreEventTypeEnum;

#include "J2ObjC_header.h"

@protocol ComGoodowRealtimeStoreDocumentSaveStateChangedEvent < NSObject, JavaObject >

- (jboolean)isPending;

- (jboolean)isSaving;

- (ComGoodowRealtimeStoreEventTypeEnum *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeStoreDocumentSaveStateChangedEvent)

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeStoreDocumentSaveStateChangedEvent)

#endif // _ComGoodowRealtimeStoreDocumentSaveStateChangedEvent_H_
