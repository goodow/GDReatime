//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DocumentSaveStateChangedEventImpl.java
//

#ifndef _ComGoodowRealtimeStoreImplDocumentSaveStateChangedEventImpl_H_
#define _ComGoodowRealtimeStoreImplDocumentSaveStateChangedEventImpl_H_

@class ComGoodowRealtimeStoreEventTypeEnum;
@protocol ComGoodowRealtimeJsonJsonObject;
@protocol ComGoodowRealtimeStoreDocument;

#include "J2ObjC_header.h"
#include "com/goodow/realtime/store/DocumentSaveStateChangedEvent.h"

@interface ComGoodowRealtimeStoreImplDocumentSaveStateChangedEventImpl : NSObject < ComGoodowRealtimeStoreDocumentSaveStateChangedEvent > {
 @public
  jboolean isPending__;
  jboolean isSaving__;
}

- (instancetype)initWithComGoodowRealtimeStoreDocument:(id<ComGoodowRealtimeStoreDocument>)document
                   withComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized;

- (jboolean)isPending;

- (jboolean)isSaving;

- (ComGoodowRealtimeStoreEventTypeEnum *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoodowRealtimeStoreImplDocumentSaveStateChangedEventImpl)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeStoreImplDocumentSaveStateChangedEventImpl)

#endif // _ComGoodowRealtimeStoreImplDocumentSaveStateChangedEventImpl_H_
