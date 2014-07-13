//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DocumentImpl.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "com/goodow/realtime/channel/Bus.h"
#include "com/goodow/realtime/channel/Message.h"
#include "com/goodow/realtime/core/Handler.h"
#include "com/goodow/realtime/core/Platform.h"
#include "com/goodow/realtime/core/Registration.h"
#include "com/goodow/realtime/core/Registrations.h"
#include "com/goodow/realtime/core/Scheduler.h"
#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/BaseModelEvent.h"
#include "com/goodow/realtime/store/Collaborator.h"
#include "com/goodow/realtime/store/Error.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/goodow/realtime/store/Store.h"
#include "com/goodow/realtime/store/channel/Constants.h"
#include "com/goodow/realtime/store/impl/BaseModelEventImpl.h"
#include "com/goodow/realtime/store/impl/CollaboratorImpl.h"
#include "com/goodow/realtime/store/impl/CollaboratorJoinedEventImpl.h"
#include "com/goodow/realtime/store/impl/CollaboratorLeftEventImpl.h"
#include "com/goodow/realtime/store/impl/DocumentBridge.h"
#include "com/goodow/realtime/store/impl/DocumentImpl.h"
#include "com/goodow/realtime/store/impl/ModelImpl.h"
#include "com/goodow/realtime/store/impl/ObjectChangedEventImpl.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/Void.h"

@implementation ComGoodowRealtimeStoreImplDocumentImpl

- (id)initWithComGoodowRealtimeStoreImplDocumentBridge:(ComGoodowRealtimeStoreImplDocumentBridge *)internalApi
                      withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)errorHandler {
  if (self = [super init]) {
    isEventsScheduled_ = NO;
    eventsTask_ = [[ComGoodowRealtimeStoreImplDocumentImpl_$1 alloc] initWithComGoodowRealtimeStoreImplDocumentImpl:self];
    model_ = [[ComGoodowRealtimeStoreImplModelImpl alloc] initWithComGoodowRealtimeStoreImplDocumentBridge:internalApi withComGoodowRealtimeStoreImplDocumentImpl:self];
    handlerRegs_ = [[ComGoodowRealtimeCoreRegistrations alloc] init];
    collaborators_ = [ComGoodowRealtimeJsonJson createObject];
    id<ComGoodowRealtimeChannelBus> bus = [((id<ComGoodowRealtimeStoreStore>) nil_chk(((ComGoodowRealtimeStoreImplDocumentBridge *) nil_chk(internalApi))->store_)) getBus];
    if (errorHandler != nil) {
      (void) [handlerRegs_ wrapWithComGoodowRealtimeCoreRegistration:[((id<ComGoodowRealtimeChannelBus>) nil_chk(bus)) subscribeLocalWithNSString:[NSString stringWithFormat:@"%@/%@/%@", ComGoodowRealtimeStoreChannelConstants_Topic_get_STORE_(), internalApi->id__, ComGoodowRealtimeStoreChannelConstants_Topic_get_DOCUMENT_ERROR_()] withComGoodowRealtimeCoreHandler:[[ComGoodowRealtimeStoreImplDocumentImpl_$2 alloc] initWithComGoodowRealtimeCoreHandler:errorHandler]]];
    }
    (void) [handlerRegs_ wrapWithComGoodowRealtimeCoreRegistration:[((id<ComGoodowRealtimeChannelBus>) nil_chk(bus)) subscribeWithNSString:[NSString stringWithFormat:@"%@/%@%@%@", ComGoodowRealtimeStoreChannelConstants_Topic_get_STORE_(), internalApi->id__, ComGoodowRealtimeStoreChannelConstants_Topic_get_PRESENCE_(), ComGoodowRealtimeStoreChannelConstants_Topic_get_WATCH_()] withComGoodowRealtimeCoreHandler:[[ComGoodowRealtimeStoreImplDocumentImpl_$3 alloc] initWithComGoodowRealtimeStoreImplDocumentImpl:self]]];
  }
  return self;
}

- (id<ComGoodowRealtimeCoreRegistration>)onCollaboratorJoinedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler {
  return [self addEventListenerWithNSString:nil withComGoodowRealtimeStoreEventTypeEnum:ComGoodowRealtimeStoreEventTypeEnum_get_COLLABORATOR_JOINED() withComGoodowRealtimeCoreHandler:handler withBoolean:NO];
}

- (id<ComGoodowRealtimeCoreRegistration>)onCollaboratorLeftWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler {
  return [self addEventListenerWithNSString:nil withComGoodowRealtimeStoreEventTypeEnum:ComGoodowRealtimeStoreEventTypeEnum_get_COLLABORATOR_LEFT() withComGoodowRealtimeCoreHandler:handler withBoolean:NO];
}

- (id<ComGoodowRealtimeCoreRegistration>)onDocumentSaveStateChangedWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler {
  return [self addEventListenerWithNSString:nil withComGoodowRealtimeStoreEventTypeEnum:ComGoodowRealtimeStoreEventTypeEnum_get_DOCUMENT_SAVE_STATE_CHANGED() withComGoodowRealtimeCoreHandler:handler withBoolean:NO];
}

- (void)close {
  [((id<ComGoodowRealtimeStoreImplDocumentBridge_OutputSink>) nil_chk(((ComGoodowRealtimeStoreImplDocumentBridge *) nil_chk(((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_))->bridge_))->outputSink_)) close];
  (void) [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(collaborators_)) clear];
  [((ComGoodowRealtimeCoreRegistrations *) nil_chk(handlerRegs_)) unregister];
}

- (id<ComGoodowRealtimeJsonJsonArray>)getCollaborators {
  id<ComGoodowRealtimeJsonJsonArray> toRtn = [ComGoodowRealtimeJsonJson createArray];
  [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(collaborators_)) forEachWithComGoodowRealtimeJsonJsonObject_MapIterator:[[ComGoodowRealtimeStoreImplDocumentImpl_$4 alloc] initWithComGoodowRealtimeJsonJsonArray:toRtn]];
  return toRtn;
}

- (ComGoodowRealtimeStoreImplModelImpl *)getModel {
  return model_;
}

- (id<ComGoodowRealtimeCoreRegistration>)addEventListenerWithNSString:(NSString *)objectId
                              withComGoodowRealtimeStoreEventTypeEnum:(ComGoodowRealtimeStoreEventTypeEnum *)type
                                     withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler
                                                          withBoolean:(BOOL)opt_capture {
  if (type == nil || handler == nil) {
    @throw [[JavaLangNullPointerException alloc] initWithNSString:[NSString stringWithFormat:@"%@ was null.", (type == nil ? @"type" : @"handler")]];
  }
  return [((ComGoodowRealtimeCoreRegistrations *) nil_chk(handlerRegs_)) wrapWithComGoodowRealtimeCoreRegistration:[((id<ComGoodowRealtimeChannelBus>) nil_chk([((id<ComGoodowRealtimeStoreStore>) nil_chk(((ComGoodowRealtimeStoreImplDocumentBridge *) nil_chk(((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_))->bridge_))->store_)) getBus])) subscribeLocalWithNSString:[NSString stringWithFormat:@"%@/%@/%@%@", ComGoodowRealtimeStoreChannelConstants_Topic_get_STORE_(), model_->bridge_->id__, (objectId == nil ? @"" : ([NSString stringWithFormat:@"%@/", objectId])), type] withComGoodowRealtimeCoreHandler:[[ComGoodowRealtimeStoreImplDocumentImpl_$5 alloc] initWithComGoodowRealtimeCoreHandler:handler]]];
}

- (void)scheduleEventWithComGoodowRealtimeStoreBaseModelEvent:(id<ComGoodowRealtimeStoreBaseModelEvent>)event {
  NSAssert(![((id<ComGoodowRealtimeStoreBaseModelEvent>) nil_chk(event)) bubbles], @"/Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DocumentImpl.java:205 condition failed: assert !event.bubbles();");
  if (eventsToFire_ == nil) {
    eventsToFire_ = [ComGoodowRealtimeJsonJson createArray];
  }
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(eventsToFire_)) pushWithId:event];
  [self fireEventWithComGoodowRealtimeStoreImplBaseModelEventImpl:(ComGoodowRealtimeStoreImplBaseModelEventImpl *) check_class_cast(event, [ComGoodowRealtimeStoreImplBaseModelEventImpl class])];
  if (!isEventsScheduled_) {
    isEventsScheduled_ = YES;
    [((id<ComGoodowRealtimeCoreScheduler>) nil_chk([ComGoodowRealtimeCorePlatform scheduler])) scheduleDeferredWithComGoodowRealtimeCoreHandler:eventsTask_];
  }
}

- (void)fireEventWithComGoodowRealtimeStoreImplBaseModelEventImpl:(ComGoodowRealtimeStoreImplBaseModelEventImpl *)event {
  (void) [((id<ComGoodowRealtimeChannelBus>) nil_chk([((id<ComGoodowRealtimeStoreStore>) nil_chk(((ComGoodowRealtimeStoreImplDocumentBridge *) nil_chk(((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_))->bridge_))->store_)) getBus])) publishLocalWithNSString:[NSString stringWithFormat:@"%@/%@/%@/%@", ComGoodowRealtimeStoreChannelConstants_Topic_get_STORE_(), model_->bridge_->id__, ((ComGoodowRealtimeStoreImplBaseModelEventImpl *) nil_chk(event))->target_, event->type__] withId:event];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDocumentImpl *)other {
  [super copyAllFieldsTo:other];
  other->collaborators_ = collaborators_;
  other->eventsTask_ = eventsTask_;
  other->eventsToFire_ = eventsToFire_;
  other->handlerRegs_ = handlerRegs_;
  other->isEventsScheduled_ = isEventsScheduled_;
  other->model_ = model_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeStoreImplDocumentBridge:withComGoodowRealtimeCoreHandler:", "DocumentImpl", NULL, 0x0, NULL },
    { "onCollaboratorJoinedWithComGoodowRealtimeCoreHandler:", "onCollaboratorJoined", "Lcom.goodow.realtime.core.Registration;", 0x1, NULL },
    { "onCollaboratorLeftWithComGoodowRealtimeCoreHandler:", "onCollaboratorLeft", "Lcom.goodow.realtime.core.Registration;", 0x1, NULL },
    { "onDocumentSaveStateChangedWithComGoodowRealtimeCoreHandler:", "onDocumentSaveStateChanged", "Lcom.goodow.realtime.core.Registration;", 0x1, NULL },
    { "close", NULL, "V", 0x1, NULL },
    { "getCollaborators", NULL, "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "getModel", NULL, "Lcom.goodow.realtime.store.impl.ModelImpl;", 0x1, NULL },
    { "addEventListenerWithNSString:withComGoodowRealtimeStoreEventTypeEnum:withComGoodowRealtimeCoreHandler:withBoolean:", "addEventListener", "Lcom.goodow.realtime.core.Registration;", 0x0, NULL },
    { "scheduleEventWithComGoodowRealtimeStoreBaseModelEvent:", "scheduleEvent", "V", 0x0, NULL },
    { "fireEventWithComGoodowRealtimeStoreImplBaseModelEventImpl:", "fireEvent", "V", 0x2, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "model_", NULL, 0x12, "Lcom.goodow.realtime.store.impl.ModelImpl;", NULL,  },
    { "handlerRegs_", NULL, 0x10, "Lcom.goodow.realtime.core.Registrations;", NULL,  },
    { "collaborators_", NULL, 0x10, "Lcom.goodow.realtime.json.JsonObject;", NULL,  },
    { "isEventsScheduled_", NULL, 0x2, "Z", NULL,  },
    { "eventsToFire_", NULL, 0x2, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "eventsTask_", NULL, 0x12, "Lcom.goodow.realtime.core.Handler;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl = { "DocumentImpl", "com.goodow.realtime.store.impl", NULL, 0x0, 10, methods, 6, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl;
}

@end

@implementation ComGoodowRealtimeStoreImplDocumentImpl_$1

- (void)handleWithId:(id)ignore {
  evtsToFire_ = this$0_->eventsToFire_;
  this$0_->eventsToFire_ = nil;
  this$0_->isEventsScheduled_ = NO;
  eventsById_ = [ComGoodowRealtimeJsonJson createObject];
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(evtsToFire_)) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeStoreImplDocumentImpl_$1_$1 alloc] initWithComGoodowRealtimeStoreImplDocumentImpl_$1:self]];
  [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(eventsById_)) forEachWithComGoodowRealtimeJsonJsonObject_MapIterator:[[ComGoodowRealtimeStoreImplDocumentImpl_$1_$2 alloc] initWithComGoodowRealtimeStoreImplDocumentImpl_$1:self]];
  evtsToFire_ = nil;
  eventsById_ = nil;
}

- (void)bubblingToAncestorsWithNSString:(NSString *)id_
withComGoodowRealtimeStoreBaseModelEvent:(id<ComGoodowRealtimeStoreBaseModelEvent>)event
     withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)seen {
  if ([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(seen)) indexOfWithId:id_] != -1) {
    return;
  }
  if (![((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(eventsById_)) hasWithNSString:id_]) {
    (void) [eventsById_ setWithNSString:id_ withId:[((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([ComGoodowRealtimeJsonJson createArray])) pushWithId:event]];
  }
  else {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([eventsById_ getArrayWithNSString:id_])) pushWithId:event];
  }
  (void) [seen pushWithId:id_];
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(this$0_->model_)) getParentsWithNSString:id_])) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeStoreImplDocumentImpl_$1_$3 alloc] initWithComGoodowRealtimeStoreImplDocumentImpl_$1:self withComGoodowRealtimeStoreBaseModelEvent:event withComGoodowRealtimeJsonJsonArray:seen]];
}

- (id)initWithComGoodowRealtimeStoreImplDocumentImpl:(ComGoodowRealtimeStoreImplDocumentImpl *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDocumentImpl_$1 *)other {
  [super copyAllFieldsTo:other];
  other->eventsById_ = eventsById_;
  other->evtsToFire_ = evtsToFire_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "handleWithJavaLangVoid:", "handle", "V", 0x1, NULL },
    { "bubblingToAncestorsWithNSString:withComGoodowRealtimeStoreBaseModelEvent:withComGoodowRealtimeJsonJsonArray:", "bubblingToAncestors", "V", 0x2, NULL },
    { "initWithComGoodowRealtimeStoreImplDocumentImpl:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.DocumentImpl;", NULL,  },
    { "evtsToFire_", NULL, 0x2, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "eventsById_", NULL, 0x2, "Lcom.goodow.realtime.json.JsonObject;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl_$1 = { "$1", "com.goodow.realtime.store.impl", "DocumentImpl", 0x8000, 3, methods, 3, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl_$1;
}

@end

@implementation ComGoodowRealtimeStoreImplDocumentImpl_$1_$1

- (void)callWithInt:(int)index
             withId:(ComGoodowRealtimeStoreImplBaseModelEventImpl *)event {
  NSAssert(!((ComGoodowRealtimeStoreImplBaseModelEventImpl *) nil_chk(event))->bubbles__, @"/Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DocumentImpl.java:58 condition failed: assert !event.bubbles;");
  NSString *id_ = event->target_;
  [this$0_ bubblingToAncestorsWithNSString:id_ withComGoodowRealtimeStoreBaseModelEvent:event withComGoodowRealtimeJsonJsonArray:[ComGoodowRealtimeJsonJson createArray]];
}

- (id)initWithComGoodowRealtimeStoreImplDocumentImpl_$1:(ComGoodowRealtimeStoreImplDocumentImpl_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeStoreImplBaseModelEventImpl:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreImplDocumentImpl_$1:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.DocumentImpl$1;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl_$1_$1 = { "$1", "com.goodow.realtime.store.impl", "DocumentImpl$$1", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl_$1_$1;
}

@end

@implementation ComGoodowRealtimeStoreImplDocumentImpl_$1_$2

- (void)callWithNSString:(NSString *)key
                  withId:(id<ComGoodowRealtimeJsonJsonArray>)events {
  ComGoodowRealtimeStoreImplBaseModelEventImpl *first = [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(events)) getWithInt:0];
  ComGoodowRealtimeStoreImplObjectChangedEventImpl *objectChangedEvent = [[ComGoodowRealtimeStoreImplObjectChangedEventImpl alloc] initWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([ComGoodowRealtimeJsonJson createObject])) setWithNSString:@"target" withId:key])) setWithNSString:@"sessionId" withId:((ComGoodowRealtimeStoreImplBaseModelEventImpl *) nil_chk(first))->sessionId__])) setWithNSString:@"userId" withId:first->userId__])) setWithNSString:@"isLocal" withBoolean:[((ComGoodowRealtimeStoreImplDocumentBridge *) nil_chk(((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(this$0_->this$0_->model_))->bridge_)) isLocalSessionWithNSString:first->sessionId__]])) setWithNSString:@"events" withId:events]];
  [this$0_->this$0_ fireEventWithComGoodowRealtimeStoreImplBaseModelEventImpl:objectChangedEvent];
}

- (id)initWithComGoodowRealtimeStoreImplDocumentImpl_$1:(ComGoodowRealtimeStoreImplDocumentImpl_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithNSString:withComGoodowRealtimeJsonJsonArray:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreImplDocumentImpl_$1:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.DocumentImpl$1;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl_$1_$2 = { "$2", "com.goodow.realtime.store.impl", "DocumentImpl$$1", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl_$1_$2;
}

@end

@implementation ComGoodowRealtimeStoreImplDocumentImpl_$1_$3

- (void)callWithInt:(int)index
             withId:(NSString *)parent {
  [this$0_ bubblingToAncestorsWithNSString:parent withComGoodowRealtimeStoreBaseModelEvent:val$event_ withComGoodowRealtimeJsonJsonArray:val$seen_];
}

- (id)initWithComGoodowRealtimeStoreImplDocumentImpl_$1:(ComGoodowRealtimeStoreImplDocumentImpl_$1 *)outer$
               withComGoodowRealtimeStoreBaseModelEvent:(id<ComGoodowRealtimeStoreBaseModelEvent>)capture$0
                     withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$1 {
  this$0_ = outer$;
  val$event_ = capture$0;
  val$seen_ = capture$1;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithInt:withNSString:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreImplDocumentImpl_$1:withComGoodowRealtimeStoreBaseModelEvent:withComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.DocumentImpl$1;", NULL,  },
    { "val$event_", NULL, 0x1012, "Lcom.goodow.realtime.store.BaseModelEvent;", NULL,  },
    { "val$seen_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl_$1_$3 = { "$3", "com.goodow.realtime.store.impl", "DocumentImpl$$1", 0x8000, 2, methods, 3, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl_$1_$3;
}

@end

@implementation ComGoodowRealtimeStoreImplDocumentImpl_$2

- (void)handleWithId:(id<ComGoodowRealtimeChannelMessage>)message {
  [((id<ComGoodowRealtimeCoreScheduler>) nil_chk([ComGoodowRealtimeCorePlatform scheduler])) handleWithId:val$errorHandler_ withId:[((id<ComGoodowRealtimeChannelMessage>) nil_chk(message)) body]];
}

- (id)initWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$0 {
  val$errorHandler_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "handleWithComGoodowRealtimeChannelMessage:", "handle", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeCoreHandler:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$errorHandler_", NULL, 0x1012, "Lcom.goodow.realtime.core.Handler;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl_$2 = { "$2", "com.goodow.realtime.store.impl", "DocumentImpl", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl_$2;
}

@end

@implementation ComGoodowRealtimeStoreImplDocumentImpl_$3

- (void)handleWithId:(id<ComGoodowRealtimeChannelMessage>)message {
  id<ComGoodowRealtimeJsonJsonObject> body = [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeChannelMessage>) nil_chk(message)) body])) setWithNSString:ComGoodowRealtimeStoreChannelConstants_Key_get_IS_ME_() withBoolean:NO];
  id<ComGoodowRealtimeStoreCollaborator> collaborator = [[ComGoodowRealtimeStoreImplCollaboratorImpl alloc] initWithComGoodowRealtimeJsonJsonObject:body];
  BOOL isJoined = ![((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(body)) hasWithNSString:ComGoodowRealtimeStoreChannelConstants_Key_get_IS_JOINED_()] || [body getBooleanWithNSString:ComGoodowRealtimeStoreChannelConstants_Key_get_IS_JOINED_()];
  NSString *sessionId = [collaborator sessionId];
  if (isJoined) {
    if (![((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(this$0_->collaborators_)) hasWithNSString:sessionId]) {
      (void) [this$0_->collaborators_ setWithNSString:sessionId withId:collaborator];
      (void) [((id<ComGoodowRealtimeChannelBus>) nil_chk([((id<ComGoodowRealtimeStoreStore>) nil_chk(((ComGoodowRealtimeStoreImplDocumentBridge *) nil_chk(((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(this$0_->model_))->bridge_))->store_)) getBus])) publishLocalWithNSString:[NSString stringWithFormat:@"%@/%@/%@", ComGoodowRealtimeStoreChannelConstants_Topic_get_STORE_(), this$0_->model_->bridge_->id__, ComGoodowRealtimeStoreEventTypeEnum_get_COLLABORATOR_JOINED()] withId:[[ComGoodowRealtimeStoreImplCollaboratorJoinedEventImpl alloc] initWithComGoodowRealtimeStoreDocument:this$0_ withComGoodowRealtimeStoreCollaborator:collaborator]];
    }
  }
  else {
    if ([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(this$0_->collaborators_)) hasWithNSString:sessionId]) {
      (void) [this$0_->collaborators_ removeWithNSString:sessionId];
      (void) [((id<ComGoodowRealtimeChannelBus>) nil_chk([((id<ComGoodowRealtimeStoreStore>) nil_chk(((ComGoodowRealtimeStoreImplDocumentBridge *) nil_chk(((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(this$0_->model_))->bridge_))->store_)) getBus])) publishLocalWithNSString:[NSString stringWithFormat:@"%@/%@/%@", ComGoodowRealtimeStoreChannelConstants_Topic_get_STORE_(), this$0_->model_->bridge_->id__, ComGoodowRealtimeStoreEventTypeEnum_get_COLLABORATOR_LEFT()] withId:[[ComGoodowRealtimeStoreImplCollaboratorLeftEventImpl alloc] initWithComGoodowRealtimeStoreDocument:this$0_ withComGoodowRealtimeStoreCollaborator:collaborator]];
    }
  }
}

- (id)initWithComGoodowRealtimeStoreImplDocumentImpl:(ComGoodowRealtimeStoreImplDocumentImpl *)outer$ {
  this$0_ = outer$;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "handleWithComGoodowRealtimeChannelMessage:", "handle", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreImplDocumentImpl:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.DocumentImpl;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl_$3 = { "$3", "com.goodow.realtime.store.impl", "DocumentImpl", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl_$3;
}

@end

@implementation ComGoodowRealtimeStoreImplDocumentImpl_$4

- (void)callWithNSString:(NSString *)key
                  withId:(id<ComGoodowRealtimeStoreCollaborator>)collaborator {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$toRtn_)) pushWithId:collaborator];
}

- (id)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  val$toRtn_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithNSString:withComGoodowRealtimeStoreCollaborator:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$toRtn_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl_$4 = { "$4", "com.goodow.realtime.store.impl", "DocumentImpl", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl_$4;
}

@end

@implementation ComGoodowRealtimeStoreImplDocumentImpl_$5

- (void)handleWithId:(id<ComGoodowRealtimeChannelMessage>)message {
  [((id<ComGoodowRealtimeCoreScheduler>) nil_chk([ComGoodowRealtimeCorePlatform scheduler])) handleWithId:val$handler_ withId:[((id<ComGoodowRealtimeChannelMessage>) nil_chk(message)) body]];
}

- (id)initWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$0 {
  val$handler_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "handleWithComGoodowRealtimeChannelMessage:", "handle", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeCoreHandler:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "val$handler_", NULL, 0x1012, "Lcom.goodow.realtime.core.Handler;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentImpl_$5 = { "$5", "com.goodow.realtime.store.impl", "DocumentImpl", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentImpl_$5;
}

@end
