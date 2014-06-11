//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/SubscribeOnlyStore.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreImplSubscribeOnlyStore_H_
#define _ComGoodowRealtimeStoreImplSubscribeOnlyStore_H_

@class ComGoodowRealtimeOperationImplCollaborativeOperation;
@class ComGoodowRealtimeStoreImplDocumentBridge;
@protocol ComGoodowRealtimeChannelBus;
@protocol ComGoodowRealtimeChannelMessage;
@protocol ComGoodowRealtimeCoreRegistration;
@protocol ComGoodowRealtimeJsonJsonObject;
@protocol ComGoodowRealtimeOperationTransformer;
@protocol ComGoodowRealtimeStoreStore;

#import "JreEmulation.h"
#include "com/goodow/realtime/core/Handler.h"
#include "com/goodow/realtime/store/impl/DocumentBridge.h"
#include "com/goodow/realtime/store/impl/SimpleStore.h"

@interface ComGoodowRealtimeStoreImplSubscribeOnlyStore : ComGoodowRealtimeStoreImplSimpleStore {
}

- (id)initWithComGoodowRealtimeChannelBus:(id<ComGoodowRealtimeChannelBus>)bus;

- (id)initWithNSString:(NSString *)serverAddress
withComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)options;

- (id<ComGoodowRealtimeStoreStore>)authorizeWithNSString:(NSString *)userId
                                            withNSString:(NSString *)sessionId;

- (void)load__WithNSString:(NSString *)id_
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)onLoaded
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)opt_initializer
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)opt_error;

- (void)onLoadedWithNSString:(NSString *)id_
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)opt_initializer
withComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)snapshot
withComGoodowRealtimeStoreImplDocumentBridge:(ComGoodowRealtimeStoreImplDocumentBridge *)bridge;

- (void)doLoadWithNSString:(NSString *)id_
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)onLoaded
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)opt_initializer
withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)opt_error;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplSubscribeOnlyStore_init() {}

@interface ComGoodowRealtimeStoreImplSubscribeOnlyStore_$1 : NSObject < ComGoodowRealtimeCoreHandler > {
 @public
  ComGoodowRealtimeStoreImplSubscribeOnlyStore *this$0_;
  NSString *val$id_;
  id<ComGoodowRealtimeCoreHandler> val$onLoaded_;
  id<ComGoodowRealtimeCoreHandler> val$opt_initializer_;
  id<ComGoodowRealtimeCoreHandler> val$opt_error_;
}

- (void)handleWithId:(id<ComGoodowRealtimeJsonJsonObject>)msg;

- (id)initWithComGoodowRealtimeStoreImplSubscribeOnlyStore:(ComGoodowRealtimeStoreImplSubscribeOnlyStore *)outer$
                                              withNSString:(NSString *)capture$0
                          withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$1
                          withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$2
                          withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$3;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplSubscribeOnlyStore_$1_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$1, this$0_, ComGoodowRealtimeStoreImplSubscribeOnlyStore *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$1, val$id_, NSString *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$1, val$onLoaded_, id<ComGoodowRealtimeCoreHandler>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$1, val$opt_initializer_, id<ComGoodowRealtimeCoreHandler>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$1, val$opt_error_, id<ComGoodowRealtimeCoreHandler>)

@interface ComGoodowRealtimeStoreImplSubscribeOnlyStore_$2 : NSObject < ComGoodowRealtimeCoreHandler > {
 @public
  id<ComGoodowRealtimeOperationTransformer> transformer_;
  ComGoodowRealtimeStoreImplDocumentBridge *val$bridge_;
}

- (void)handleWithId:(id<ComGoodowRealtimeChannelMessage>)message;

- (id)initWithComGoodowRealtimeStoreImplDocumentBridge:(ComGoodowRealtimeStoreImplDocumentBridge *)capture$0;

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$2 *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplSubscribeOnlyStore_$2_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$2, transformer_, id<ComGoodowRealtimeOperationTransformer>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$2, val$bridge_, ComGoodowRealtimeStoreImplDocumentBridge *)

@interface ComGoodowRealtimeStoreImplSubscribeOnlyStore_$3 : NSObject < ComGoodowRealtimeStoreImplDocumentBridge_OutputSink > {
 @public
  id<ComGoodowRealtimeCoreRegistration> val$handlerReg_;
}

- (void)close;

- (void)consumeWithId:(ComGoodowRealtimeOperationImplCollaborativeOperation *)op;

- (id)initWithComGoodowRealtimeCoreRegistration:(id<ComGoodowRealtimeCoreRegistration>)capture$0;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplSubscribeOnlyStore_$3_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$3, val$handlerReg_, id<ComGoodowRealtimeCoreRegistration>)

@interface ComGoodowRealtimeStoreImplSubscribeOnlyStore_$4 : NSObject < ComGoodowRealtimeCoreHandler > {
 @public
  ComGoodowRealtimeStoreImplSubscribeOnlyStore *this$0_;
  NSString *val$id_;
  id<ComGoodowRealtimeCoreHandler> val$opt_error_;
  id<ComGoodowRealtimeCoreHandler> val$opt_initializer_;
  id<ComGoodowRealtimeCoreHandler> val$onLoaded_;
}

- (void)handleWithId:(id<ComGoodowRealtimeChannelMessage>)message;

- (id)initWithComGoodowRealtimeStoreImplSubscribeOnlyStore:(ComGoodowRealtimeStoreImplSubscribeOnlyStore *)outer$
                                              withNSString:(NSString *)capture$0
                          withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$1
                          withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$2
                          withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$3;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplSubscribeOnlyStore_$4_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$4, this$0_, ComGoodowRealtimeStoreImplSubscribeOnlyStore *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$4, val$id_, NSString *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$4, val$opt_error_, id<ComGoodowRealtimeCoreHandler>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$4, val$opt_initializer_, id<ComGoodowRealtimeCoreHandler>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplSubscribeOnlyStore_$4, val$onLoaded_, id<ComGoodowRealtimeCoreHandler>)

#endif // _ComGoodowRealtimeStoreImplSubscribeOnlyStore_H_
