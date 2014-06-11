//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DefaultDocument.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreImplDefaultDocument_H_
#define _ComGoodowRealtimeStoreImplDefaultDocument_H_

@class ComGoodowRealtimeCoreRegistrations;
@class ComGoodowRealtimeStoreEventTypeEnum;
@class ComGoodowRealtimeStoreImplDefaultBaseModelEvent;
@class ComGoodowRealtimeStoreImplDefaultModel;
@class ComGoodowRealtimeStoreImplDocumentBridge;
@class JavaLangVoid;
@protocol ComGoodowRealtimeChannelMessage;
@protocol ComGoodowRealtimeCoreRegistration;
@protocol ComGoodowRealtimeJsonJsonArray;
@protocol ComGoodowRealtimeJsonJsonObject;
@protocol ComGoodowRealtimeStoreBaseModelEvent;
@protocol ComGoodowRealtimeStoreCollaborator;

#import "JreEmulation.h"
#include "com/goodow/realtime/core/Handler.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/Document.h"

@interface ComGoodowRealtimeStoreImplDefaultDocument : NSObject < ComGoodowRealtimeStoreDocument > {
 @public
  id<ComGoodowRealtimeJsonJsonArray> collaborators_;
  ComGoodowRealtimeStoreImplDefaultModel *model_;
  ComGoodowRealtimeCoreRegistrations *handlerRegs_;
  BOOL isEventsScheduled_;
  id<ComGoodowRealtimeJsonJsonArray> eventsToFire_;
  id<ComGoodowRealtimeCoreHandler> eventsTask_;
}

- (id)initWithComGoodowRealtimeStoreImplDocumentBridge:(ComGoodowRealtimeStoreImplDocumentBridge *)internalApi
                      withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)errorHandler;

- (id<ComGoodowRealtimeCoreRegistration>)onCollaboratorJoinedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler;

- (id<ComGoodowRealtimeCoreRegistration>)onCollaboratorLeftWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler;

- (id<ComGoodowRealtimeCoreRegistration>)onDocumentSaveStateChangedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler;

- (void)close;

- (id<ComGoodowRealtimeJsonJsonArray>)getCollaborators;

- (ComGoodowRealtimeStoreImplDefaultModel *)getModel;

- (id<ComGoodowRealtimeCoreRegistration>)addEventListenerWithNSString:(NSString *)objectId
                              withComGoodowRealtimeStoreEventTypeEnum:(ComGoodowRealtimeStoreEventTypeEnum *)type
                                     withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler
                                                          withBoolean:(BOOL)opt_capture;

- (void)onCollaboratorChangedWithBoolean:(BOOL)isJoined
  withComGoodowRealtimeStoreCollaborator:(id<ComGoodowRealtimeStoreCollaborator>)collaborator;

- (void)scheduleEventWithComGoodowRealtimeStoreBaseModelEvent:(id<ComGoodowRealtimeStoreBaseModelEvent>)event;

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDefaultDocument *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultDocument_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument, collaborators_, id<ComGoodowRealtimeJsonJsonArray>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument, model_, ComGoodowRealtimeStoreImplDefaultModel *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument, handlerRegs_, ComGoodowRealtimeCoreRegistrations *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument, eventsToFire_, id<ComGoodowRealtimeJsonJsonArray>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument, eventsTask_, id<ComGoodowRealtimeCoreHandler>)

@interface ComGoodowRealtimeStoreImplDefaultDocument_$1 : NSObject < ComGoodowRealtimeCoreHandler > {
 @public
  ComGoodowRealtimeStoreImplDefaultDocument *this$0_;
  id<ComGoodowRealtimeJsonJsonArray> evtsToFire_;
  id<ComGoodowRealtimeJsonJsonObject> eventsById_;
}

- (void)handleWithId:(id)ignore;

- (void)bubblingToAncestorsWithNSString:(NSString *)id_
withComGoodowRealtimeStoreBaseModelEvent:(id<ComGoodowRealtimeStoreBaseModelEvent>)event
     withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)seen;

- (void)fireEventWithComGoodowRealtimeStoreImplDefaultBaseModelEvent:(ComGoodowRealtimeStoreImplDefaultBaseModelEvent *)event;

- (id)initWithComGoodowRealtimeStoreImplDefaultDocument:(ComGoodowRealtimeStoreImplDefaultDocument *)outer$;

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDefaultDocument_$1 *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultDocument_$1_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$1, this$0_, ComGoodowRealtimeStoreImplDefaultDocument *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$1, evtsToFire_, id<ComGoodowRealtimeJsonJsonArray>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$1, eventsById_, id<ComGoodowRealtimeJsonJsonObject>)

@interface ComGoodowRealtimeStoreImplDefaultDocument_$1_$1 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
 @public
  ComGoodowRealtimeStoreImplDefaultDocument_$1 *this$0_;
}

- (void)callWithInt:(int)index
             withId:(ComGoodowRealtimeStoreImplDefaultBaseModelEvent *)event;

- (id)initWithComGoodowRealtimeStoreImplDefaultDocument_$1:(ComGoodowRealtimeStoreImplDefaultDocument_$1 *)outer$;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultDocument_$1_$1_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$1_$1, this$0_, ComGoodowRealtimeStoreImplDefaultDocument_$1 *)

@interface ComGoodowRealtimeStoreImplDefaultDocument_$1_$2 : NSObject < ComGoodowRealtimeJsonJsonObject_MapIterator > {
 @public
  ComGoodowRealtimeStoreImplDefaultDocument_$1 *this$0_;
}

- (void)callWithNSString:(NSString *)key
                  withId:(id<ComGoodowRealtimeJsonJsonArray>)events;

- (id)initWithComGoodowRealtimeStoreImplDefaultDocument_$1:(ComGoodowRealtimeStoreImplDefaultDocument_$1 *)outer$;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultDocument_$1_$2_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$1_$2, this$0_, ComGoodowRealtimeStoreImplDefaultDocument_$1 *)

@interface ComGoodowRealtimeStoreImplDefaultDocument_$1_$3 : NSObject < ComGoodowRealtimeJsonJsonArray_ListIterator > {
 @public
  ComGoodowRealtimeStoreImplDefaultDocument_$1 *this$0_;
  id<ComGoodowRealtimeStoreBaseModelEvent> val$event_;
  id<ComGoodowRealtimeJsonJsonArray> val$seen_;
}

- (void)callWithInt:(int)index
             withId:(NSString *)parent;

- (id)initWithComGoodowRealtimeStoreImplDefaultDocument_$1:(ComGoodowRealtimeStoreImplDefaultDocument_$1 *)outer$
                  withComGoodowRealtimeStoreBaseModelEvent:(id<ComGoodowRealtimeStoreBaseModelEvent>)capture$0
                        withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$1;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultDocument_$1_$3_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$1_$3, this$0_, ComGoodowRealtimeStoreImplDefaultDocument_$1 *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$1_$3, val$event_, id<ComGoodowRealtimeStoreBaseModelEvent>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$1_$3, val$seen_, id<ComGoodowRealtimeJsonJsonArray>)

@interface ComGoodowRealtimeStoreImplDefaultDocument_$2 : NSObject < ComGoodowRealtimeCoreHandler > {
 @public
  id<ComGoodowRealtimeCoreHandler> val$errorHandler_;
}

- (void)handleWithId:(id<ComGoodowRealtimeChannelMessage>)message;

- (id)initWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$0;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultDocument_$2_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$2, val$errorHandler_, id<ComGoodowRealtimeCoreHandler>)

@interface ComGoodowRealtimeStoreImplDefaultDocument_$3 : NSObject < ComGoodowRealtimeCoreHandler > {
 @public
  id<ComGoodowRealtimeCoreHandler> val$handler_;
}

- (void)handleWithId:(id<ComGoodowRealtimeChannelMessage>)message;

- (id)initWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$0;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultDocument_$3_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultDocument_$3, val$handler_, id<ComGoodowRealtimeCoreHandler>)

#endif // _ComGoodowRealtimeStoreImplDefaultDocument_H_