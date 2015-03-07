//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DocumentBridge.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/goodow/realtime/channel/Bus.h"
#include "com/goodow/realtime/core/Handler.h"
#include "com/goodow/realtime/core/Platform.h"
#include "com/goodow/realtime/core/Scheduler.h"
#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonElement.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/operation/OperationComponent.h"
#include "com/goodow/realtime/operation/create/CreateComponent.h"
#include "com/goodow/realtime/operation/impl/AbstractComponent.h"
#include "com/goodow/realtime/operation/impl/CollaborativeOperation.h"
#include "com/goodow/realtime/operation/impl/CollaborativeTransformer.h"
#include "com/goodow/realtime/operation/undo/UndoManager.h"
#include "com/goodow/realtime/operation/undo/UndoManagerFactory.h"
#include "com/goodow/realtime/operation/undo/UndoManagerPlus.h"
#include "com/goodow/realtime/store/CollaborativeMap.h"
#include "com/goodow/realtime/store/Collaborator.h"
#include "com/goodow/realtime/store/Document.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/goodow/realtime/store/Store.h"
#include "com/goodow/realtime/store/UndoRedoStateChangedEvent.h"
#include "com/goodow/realtime/store/channel/Constants.h"
#include "com/goodow/realtime/store/impl/CollaborativeListImpl.h"
#include "com/goodow/realtime/store/impl/CollaborativeMapImpl.h"
#include "com/goodow/realtime/store/impl/CollaborativeObjectImpl.h"
#include "com/goodow/realtime/store/impl/CollaborativeStringImpl.h"
#include "com/goodow/realtime/store/impl/CollaboratorImpl.h"
#include "com/goodow/realtime/store/impl/DocumentBridge.h"
#include "com/goodow/realtime/store/impl/DocumentImpl.h"
#include "com/goodow/realtime/store/impl/IndexReferenceImpl.h"
#include "com/goodow/realtime/store/impl/MemoryStore.h"
#include "com/goodow/realtime/store/impl/ModelImpl.h"
#include "com/goodow/realtime/store/impl/UndoRedoStateChangedEventImpl.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Void.h"

__attribute__((unused)) static void ComGoodowRealtimeStoreImplDocumentBridge_applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation_(ComGoodowRealtimeStoreImplDocumentBridge *self, ComGoodowRealtimeOperationImplCollaborativeOperation *operation);
__attribute__((unused)) static void ComGoodowRealtimeStoreImplDocumentBridge_bypassUndoStackWithComGoodowRealtimeOperationImplCollaborativeOperation_(ComGoodowRealtimeStoreImplDocumentBridge *self, ComGoodowRealtimeOperationImplCollaborativeOperation *operation);
__attribute__((unused)) static void ComGoodowRealtimeStoreImplDocumentBridge_mayUndoRedoStateChanged(ComGoodowRealtimeStoreImplDocumentBridge *self);

@interface ComGoodowRealtimeStoreImplDocumentBridge () {
 @public
  ComGoodowRealtimeStoreImplDocumentImpl *document_;
  ComGoodowRealtimeStoreImplModelImpl *model_;
  id<ComGoodowRealtimeOperationUndoUndoManager> undoManager_;
}

- (void)applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation;

- (void)bypassUndoStackWithComGoodowRealtimeOperationImplCollaborativeOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation;

- (void)mayUndoRedoStateChanged;
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge, document_, ComGoodowRealtimeStoreImplDocumentImpl *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge, model_, ComGoodowRealtimeStoreImplModelImpl *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge, undoManager_, id<ComGoodowRealtimeOperationUndoUndoManager>)

@interface ComGoodowRealtimeStoreImplDocumentBridge_$1 () {
 @public
  ComGoodowRealtimeStoreImplDocumentBridge *this$0_;
  id<ComGoodowRealtimeStoreStore> val$store_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$1, this$0_, ComGoodowRealtimeStoreImplDocumentBridge *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$1, val$store_, id<ComGoodowRealtimeStoreStore>)

@interface ComGoodowRealtimeStoreImplDocumentBridge_$2 () {
 @public
  id<ComGoodowRealtimeCoreHandler> val$handler_;
  id val$event_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$2, val$handler_, id<ComGoodowRealtimeCoreHandler>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$2, val$event_, id)

@interface ComGoodowRealtimeStoreImplDocumentBridge_$3 () {
 @public
  id<ComGoodowRealtimeJsonJsonArray> val$createComponents_;
  id<ComGoodowRealtimeJsonJsonArray> val$components_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$3, val$createComponents_, id<ComGoodowRealtimeJsonJsonArray>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$3, val$components_, id<ComGoodowRealtimeJsonJsonArray>)

@interface ComGoodowRealtimeStoreImplDocumentBridge_$4 () {
 @public
  id<ComGoodowRealtimeJsonJsonArray> val$createComponents_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$4, val$createComponents_, id<ComGoodowRealtimeJsonJsonArray>)

@interface ComGoodowRealtimeStoreImplDocumentBridge_$5 () {
 @public
  ComGoodowRealtimeStoreImplDocumentBridge *this$0_;
  ComGoodowRealtimeOperationImplCollaborativeOperation *val$operation_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$5, this$0_, ComGoodowRealtimeStoreImplDocumentBridge *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDocumentBridge_$5, val$operation_, ComGoodowRealtimeOperationImplCollaborativeOperation *)

@implementation ComGoodowRealtimeStoreImplDocumentBridge

- (instancetype)initWithComGoodowRealtimeStoreStore:(id<ComGoodowRealtimeStoreStore>)store
                                       withNSString:(NSString *)id_
                 withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)components
                 withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)collaborators
                   withComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)errorHandler {
  if (self = [super init]) {
    undoManager_ = ComGoodowRealtimeOperationUndoUndoManagerFactory_getNoOp();
    outputSink_ = ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_get_VOID_();
    self->store_ = store == nil ? [[ComGoodowRealtimeStoreImplMemoryStore alloc] init] : ((id) store);
    self->id__ = id_;
    document_ = [[ComGoodowRealtimeStoreImplDocumentImpl alloc] initWithComGoodowRealtimeStoreImplDocumentBridge:self withComGoodowRealtimeCoreHandler:errorHandler];
    model_ = [document_ getModel];
    collaborators = collaborators == nil ? ComGoodowRealtimeJsonJson_createArray() : collaborators;
    [collaborators forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeStoreImplDocumentBridge_$1 alloc] initWithComGoodowRealtimeStoreImplDocumentBridge:self withComGoodowRealtimeStoreStore:store]];
    if (components != nil && [components length] > 0) {
      ComGoodowRealtimeOperationImplCollaborativeTransformer *transformer = [[ComGoodowRealtimeOperationImplCollaborativeTransformer alloc] init];
      ComGoodowRealtimeOperationImplCollaborativeOperation *operation = [transformer createOperationWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(ComGoodowRealtimeJsonJson_createObject())) setWithNSString:@"op" withId:components]];
      ComGoodowRealtimeStoreImplDocumentBridge_applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation_(self, operation);
    }
  }
  return self;
}

- (void)consumeWithComGoodowRealtimeOperationOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation {
  ComGoodowRealtimeStoreImplDocumentBridge_applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation_(self, operation);
  [((id<ComGoodowRealtimeOperationUndoUndoManager>) nil_chk(undoManager_)) nonUndoableOpWithId:operation];
}

- (void)createRoot {
  [((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_)) createRoot];
}

- (id<ComGoodowRealtimeStoreDocument>)getDocument {
  return document_;
}

- (void)scheduleHandleWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)handler
                                                withId:(id)event {
  [((id<ComGoodowRealtimeCoreScheduler>) nil_chk(ComGoodowRealtimeCorePlatform_scheduler())) scheduleDeferredWithComGoodowRealtimeCoreHandler:[[ComGoodowRealtimeStoreImplDocumentBridge_$2 alloc] initWithComGoodowRealtimeCoreHandler:handler withId:event]];
}

- (void)setOutputSinkWithComGoodowRealtimeStoreImplDocumentBridge_OutputSink:(id<ComGoodowRealtimeStoreImplDocumentBridge_OutputSink>)outputSink {
  self->outputSink_ = outputSink;
}

- (void)setUndoEnabledWithBoolean:(jboolean)undoEnabled {
  undoManager_ = undoEnabled ? ComGoodowRealtimeOperationUndoUndoManagerFactory_createUndoManager() : ComGoodowRealtimeOperationUndoUndoManagerFactory_getNoOp();
}

- (id<ComGoodowRealtimeJsonJsonObject>)toJson {
  return [((id<ComGoodowRealtimeStoreCollaborativeMap>) nil_chk([((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_)) getRoot])) toJson];
}

- (id<ComGoodowRealtimeJsonJsonArray>)toSnapshot {
  id<ComGoodowRealtimeJsonJsonArray> createComponents = ComGoodowRealtimeJsonJson_createArray();
  id<ComGoodowRealtimeJsonJsonArray> components = ComGoodowRealtimeJsonJson_createArray();
  [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(model_))->objects_)) forEachWithComGoodowRealtimeJsonJsonObject_MapIterator:[[ComGoodowRealtimeStoreImplDocumentBridge_$3 alloc] initWithComGoodowRealtimeJsonJsonArray:createComponents withComGoodowRealtimeJsonJsonArray:components]];
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(components)) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeStoreImplDocumentBridge_$4 alloc] initWithComGoodowRealtimeJsonJsonArray:createComponents]];
  return createComponents;
}

- (NSString *)description {
  return [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([self toJson])) toJsonString];
}

- (void)consumeAndSubmitWithComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)component {
  id<ComGoodowRealtimeStoreCollaborator> me = [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(((ComGoodowRealtimeStoreImplDocumentImpl *) nil_chk(document_))->collaborators_)) getWithNSString:[((id<ComGoodowRealtimeChannelBus>) nil_chk([((id<ComGoodowRealtimeStoreStore>) nil_chk(store_)) getBus])) getSessionId]];
  ComGoodowRealtimeOperationImplCollaborativeOperation *operation = [[ComGoodowRealtimeOperationImplCollaborativeOperation alloc] initWithNSString:me == nil ? nil : [me userId] withNSString:[((id<ComGoodowRealtimeChannelBus>) nil_chk([store_ getBus])) getSessionId] withComGoodowRealtimeJsonJsonArray:[((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(ComGoodowRealtimeJsonJson_createArray())) pushWithId:component]];
  ComGoodowRealtimeStoreImplDocumentBridge_applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation_(self, operation);
  [((id<ComGoodowRealtimeOperationUndoUndoManager>) nil_chk(undoManager_)) checkpoint];
  [undoManager_ undoableOpWithId:operation];
  ComGoodowRealtimeStoreImplDocumentBridge_mayUndoRedoStateChanged(self);
  [((id<ComGoodowRealtimeStoreImplDocumentBridge_OutputSink>) nil_chk(outputSink_)) consumeWithComGoodowRealtimeOperationOperation:operation];
}

- (jboolean)isLocalSessionWithNSString:(NSString *)sessionId {
  return [((NSString *) nil_chk([((id<ComGoodowRealtimeChannelBus>) nil_chk([((id<ComGoodowRealtimeStoreStore>) nil_chk(store_)) getBus])) getSessionId])) isEqual:sessionId];
}

- (void)redo {
  ComGoodowRealtimeStoreImplDocumentBridge_bypassUndoStackWithComGoodowRealtimeOperationImplCollaborativeOperation_(self, [((id<ComGoodowRealtimeOperationUndoUndoManager>) nil_chk(undoManager_)) redo]);
}

- (void)undo {
  ComGoodowRealtimeStoreImplDocumentBridge_bypassUndoStackWithComGoodowRealtimeOperationImplCollaborativeOperation_(self, [((id<ComGoodowRealtimeOperationUndoUndoManager>) nil_chk(undoManager_)) undo]);
}

- (void)applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation {
  ComGoodowRealtimeStoreImplDocumentBridge_applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation_(self, operation);
}

- (void)bypassUndoStackWithComGoodowRealtimeOperationImplCollaborativeOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation {
  ComGoodowRealtimeStoreImplDocumentBridge_bypassUndoStackWithComGoodowRealtimeOperationImplCollaborativeOperation_(self, operation);
}

- (void)mayUndoRedoStateChanged {
  ComGoodowRealtimeStoreImplDocumentBridge_mayUndoRedoStateChanged(self);
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDocumentBridge *)other {
  [super copyAllFieldsTo:other];
  other->store_ = store_;
  other->id__ = id__;
  other->document_ = document_;
  other->model_ = model_;
  other->undoManager_ = undoManager_;
  other->outputSink_ = outputSink_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeStoreStore:withNSString:withComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeCoreHandler:", "DocumentBridge", NULL, 0x1, NULL },
    { "consumeWithComGoodowRealtimeOperationImplCollaborativeOperation:", "consume", "V", 0x1, NULL },
    { "createRoot", NULL, "V", 0x1, NULL },
    { "getDocument", NULL, "Lcom.goodow.realtime.store.Document;", 0x1, NULL },
    { "scheduleHandleWithComGoodowRealtimeCoreHandler:withId:", "scheduleHandle", "V", 0x1, NULL },
    { "setOutputSinkWithComGoodowRealtimeStoreImplDocumentBridge_OutputSink:", "setOutputSink", "V", 0x1, NULL },
    { "setUndoEnabledWithBoolean:", "setUndoEnabled", "V", 0x1, NULL },
    { "toJson", NULL, "Lcom.goodow.realtime.json.JsonObject;", 0x1, NULL },
    { "toSnapshot", NULL, "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "consumeAndSubmitWithComGoodowRealtimeOperationOperationComponent:", "consumeAndSubmit", "V", 0x0, NULL },
    { "isLocalSessionWithNSString:", "isLocalSession", "Z", 0x0, NULL },
    { "redo", NULL, "V", 0x0, NULL },
    { "undo", NULL, "V", 0x0, NULL },
    { "applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation:", "applyLocally", "V", 0x2, NULL },
    { "bypassUndoStackWithComGoodowRealtimeOperationImplCollaborativeOperation:", "bypassUndoStack", "V", 0x2, NULL },
    { "mayUndoRedoStateChanged", NULL, "V", 0x2, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "store_", NULL, 0x10, "Lcom.goodow.realtime.store.Store;", NULL,  },
    { "id__", "id", 0x10, "Ljava.lang.String;", NULL,  },
    { "document_", NULL, 0x12, "Lcom.goodow.realtime.store.impl.DocumentImpl;", NULL,  },
    { "model_", NULL, 0x12, "Lcom.goodow.realtime.store.impl.ModelImpl;", NULL,  },
    { "undoManager_", NULL, 0x2, "Lcom.goodow.realtime.operation.undo.UndoManager;", NULL,  },
    { "outputSink_", NULL, 0x0, "Lcom.goodow.realtime.store.impl.DocumentBridge$OutputSink;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentBridge = { 1, "DocumentBridge", "com.goodow.realtime.store.impl", NULL, 0x1, 17, methods, 6, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentBridge;
}

@end

void ComGoodowRealtimeStoreImplDocumentBridge_applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation_(ComGoodowRealtimeStoreImplDocumentBridge *self, ComGoodowRealtimeOperationImplCollaborativeOperation *operation) {
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(((ComGoodowRealtimeOperationImplCollaborativeOperation *) nil_chk(operation))->components_)) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeStoreImplDocumentBridge_$5 alloc] initWithComGoodowRealtimeStoreImplDocumentBridge:self withComGoodowRealtimeOperationImplCollaborativeOperation:operation]];
}

void ComGoodowRealtimeStoreImplDocumentBridge_bypassUndoStackWithComGoodowRealtimeOperationImplCollaborativeOperation_(ComGoodowRealtimeStoreImplDocumentBridge *self, ComGoodowRealtimeOperationImplCollaborativeOperation *operation) {
  ComGoodowRealtimeStoreImplDocumentBridge_applyLocallyWithComGoodowRealtimeOperationImplCollaborativeOperation_(self, operation);
  [((id<ComGoodowRealtimeStoreImplDocumentBridge_OutputSink>) nil_chk(self->outputSink_)) consumeWithComGoodowRealtimeOperationOperation:operation];
  ComGoodowRealtimeStoreImplDocumentBridge_mayUndoRedoStateChanged(self);
}

void ComGoodowRealtimeStoreImplDocumentBridge_mayUndoRedoStateChanged(ComGoodowRealtimeStoreImplDocumentBridge *self) {
  jboolean canUndo = [((id<ComGoodowRealtimeOperationUndoUndoManager>) nil_chk(self->undoManager_)) canUndo];
  jboolean canRedo = [self->undoManager_ canRedo];
  if ([((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(self->model_)) canUndo] != canUndo || [self->model_ canRedo] != canRedo) {
    self->model_->canUndo__ = canUndo;
    self->model_->canRedo__ = canRedo;
    id<ComGoodowRealtimeStoreUndoRedoStateChangedEvent> event = [[ComGoodowRealtimeStoreImplUndoRedoStateChangedEventImpl alloc] initWithComGoodowRealtimeStoreModel:self->model_ withComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(ComGoodowRealtimeJsonJson_createObject())) setWithNSString:@"canUndo" withBoolean:canUndo])) setWithNSString:@"canRedo" withBoolean:canRedo]];
    (void) [((id<ComGoodowRealtimeChannelBus>) nil_chk([((id<ComGoodowRealtimeStoreStore>) nil_chk(self->store_)) getBus])) publishLocalWithNSString:JreStrcat("$C$C@", ComGoodowRealtimeStoreChannelConstants_Topic_get_STORE_(), '/', self->id__, '/', ComGoodowRealtimeStoreEventTypeEnum_get_UNDO_REDO_STATE_CHANGED()) withId:event];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplDocumentBridge)

BOOL ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_initialized = NO;

id<ComGoodowRealtimeStoreImplDocumentBridge_OutputSink> ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_VOID_;

@implementation ComGoodowRealtimeStoreImplDocumentBridge_OutputSink

+ (void)initialize {
  if (self == [ComGoodowRealtimeStoreImplDocumentBridge_OutputSink class]) {
    ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_VOID_ = [[ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_$1 alloc] init];
    J2OBJC_SET_INITIALIZED(ComGoodowRealtimeStoreImplDocumentBridge_OutputSink)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "close", NULL, "V", 0x401, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "VOID_", NULL, 0x19, "Lcom.goodow.realtime.store.impl.DocumentBridge$OutputSink;", &ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_VOID_,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentBridge_OutputSink = { 1, "OutputSink", "com.goodow.realtime.store.impl", "DocumentBridge", 0x201, 1, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentBridge_OutputSink;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplDocumentBridge_OutputSink)

@implementation ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_$1

- (void)close {
}

- (void)consumeWithComGoodowRealtimeOperationOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)op {
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "close", NULL, "V", 0x1, NULL },
    { "consumeWithComGoodowRealtimeOperationImplCollaborativeOperation:", "consume", "V", 0x1, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_$1 = { 1, "$1", "com.goodow.realtime.store.impl", "DocumentBridge$OutputSink", 0x8000, 3, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplDocumentBridge_OutputSink_$1)

@implementation ComGoodowRealtimeStoreImplDocumentBridge_$1

- (void)callWithInt:(jint)index
             withId:(id<ComGoodowRealtimeJsonJsonObject>)obj {
  jboolean isMe = [((NSString *) nil_chk([((id<ComGoodowRealtimeChannelBus>) nil_chk([((id<ComGoodowRealtimeStoreStore>) nil_chk(val$store_)) getBus])) getSessionId])) isEqual:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(obj)) getStringWithNSString:@"sessionId"]];
  id<ComGoodowRealtimeStoreCollaborator> collaborator = [[ComGoodowRealtimeStoreImplCollaboratorImpl alloc] initWithComGoodowRealtimeJsonJsonObject:[obj setWithNSString:ComGoodowRealtimeStoreChannelConstants_Key_get_IS_ME_() withBoolean:isMe]];
  (void) [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(((ComGoodowRealtimeStoreImplDocumentImpl *) nil_chk(this$0_->document_))->collaborators_)) setWithNSString:[collaborator sessionId] withId:collaborator];
}

- (instancetype)initWithComGoodowRealtimeStoreImplDocumentBridge:(ComGoodowRealtimeStoreImplDocumentBridge *)outer$
                                 withComGoodowRealtimeStoreStore:(id<ComGoodowRealtimeStoreStore>)capture$0 {
  this$0_ = outer$;
  val$store_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDocumentBridge_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$store_ = val$store_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeJsonJsonObject:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreImplDocumentBridge:withComGoodowRealtimeStoreStore:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.DocumentBridge;", NULL,  },
    { "val$store_", NULL, 0x1012, "Lcom.goodow.realtime.store.Store;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentBridge_$1 = { 1, "$1", "com.goodow.realtime.store.impl", "DocumentBridge", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentBridge_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplDocumentBridge_$1)

@implementation ComGoodowRealtimeStoreImplDocumentBridge_$2

- (void)handleWithId:(id)ignore {
  [((id<ComGoodowRealtimeCoreScheduler>) nil_chk(ComGoodowRealtimeCorePlatform_scheduler())) handleWithId:val$handler_ withId:val$event_];
}

- (instancetype)initWithComGoodowRealtimeCoreHandler:(id<ComGoodowRealtimeCoreHandler>)capture$0
                                              withId:(id)capture$1 {
  val$handler_ = capture$0;
  val$event_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDocumentBridge_$2 *)other {
  [super copyAllFieldsTo:other];
  other->val$handler_ = val$handler_;
  other->val$event_ = val$event_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "handleWithJavaLangVoid:", "handle", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeCoreHandler:withId:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$handler_", NULL, 0x1012, "Lcom.goodow.realtime.core.Handler;", NULL,  },
    { "val$event_", NULL, 0x1012, "TT;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentBridge_$2 = { 1, "$2", "com.goodow.realtime.store.impl", "DocumentBridge", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentBridge_$2;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplDocumentBridge_$2)

@implementation ComGoodowRealtimeStoreImplDocumentBridge_$3

- (void)callWithNSString:(NSString *)key
                  withId:(ComGoodowRealtimeStoreImplCollaborativeObjectImpl *)object {
  IOSObjectArray *initializeComponents = [((ComGoodowRealtimeStoreImplCollaborativeObjectImpl *) nil_chk(object)) toInitialization];
  jboolean isCreateOp = YES;
  {
    IOSObjectArray *a__ = initializeComponents;
    ComGoodowRealtimeOperationOperationComponent * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ComGoodowRealtimeOperationOperationComponent * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ComGoodowRealtimeOperationOperationComponent *component = *b__++;
      if (isCreateOp) {
        (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$createComponents_)) pushWithId:[((ComGoodowRealtimeOperationOperationComponent *) nil_chk(component)) toJson]];
        isCreateOp = NO;
      }
      else {
        (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$components_)) pushWithId:[((ComGoodowRealtimeOperationOperationComponent *) nil_chk(component)) toJson]];
      }
    }
  }
}

- (instancetype)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0
                    withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$1 {
  val$createComponents_ = capture$0;
  val$components_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDocumentBridge_$3 *)other {
  [super copyAllFieldsTo:other];
  other->val$createComponents_ = val$createComponents_;
  other->val$components_ = val$components_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithNSString:withComGoodowRealtimeStoreImplCollaborativeObjectImpl:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$createComponents_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "val$components_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentBridge_$3 = { 1, "$3", "com.goodow.realtime.store.impl", "DocumentBridge", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentBridge_$3;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplDocumentBridge_$3)

@implementation ComGoodowRealtimeStoreImplDocumentBridge_$4

- (void)callWithInt:(jint)index
             withId:(id<ComGoodowRealtimeJsonJsonElement>)component {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$createComponents_)) pushWithId:component];
}

- (instancetype)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  val$createComponents_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDocumentBridge_$4 *)other {
  [super copyAllFieldsTo:other];
  other->val$createComponents_ = val$createComponents_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeJsonJsonElement:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$createComponents_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentBridge_$4 = { 1, "$4", "com.goodow.realtime.store.impl", "DocumentBridge", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentBridge_$4;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplDocumentBridge_$4)

@implementation ComGoodowRealtimeStoreImplDocumentBridge_$5

- (void)callWithInt:(jint)index
             withId:(ComGoodowRealtimeOperationImplAbstractComponent *)component {
  if (((ComGoodowRealtimeOperationImplAbstractComponent *) nil_chk(component))->type_ != ComGoodowRealtimeOperationCreateCreateComponent_TYPE) {
    [((ComGoodowRealtimeStoreImplCollaborativeObjectImpl *) nil_chk([((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(this$0_->model_)) getObjectWithNSString:component->id__])) consumeWithNSString:((ComGoodowRealtimeOperationImplCollaborativeOperation *) nil_chk(val$operation_))->userId_ withNSString:val$operation_->sessionId_ withComGoodowRealtimeOperationOperationComponent:component];
    return;
  }
  ComGoodowRealtimeStoreImplCollaborativeObjectImpl *obj;
  switch (((ComGoodowRealtimeOperationCreateCreateComponent *) check_class_cast(component, [ComGoodowRealtimeOperationCreateCreateComponent class]))->subType_) {
    case ComGoodowRealtimeOperationCreateCreateComponent_MAP:
    obj = [[ComGoodowRealtimeStoreImplCollaborativeMapImpl alloc] initWithComGoodowRealtimeStoreImplModelImpl:this$0_->model_];
    break;
    case ComGoodowRealtimeOperationCreateCreateComponent_LIST:
    obj = [[ComGoodowRealtimeStoreImplCollaborativeListImpl alloc] initWithComGoodowRealtimeStoreImplModelImpl:this$0_->model_];
    break;
    case ComGoodowRealtimeOperationCreateCreateComponent_STRING:
    obj = [[ComGoodowRealtimeStoreImplCollaborativeStringImpl alloc] initWithComGoodowRealtimeStoreImplModelImpl:this$0_->model_];
    break;
    case ComGoodowRealtimeOperationCreateCreateComponent_INDEX_REFERENCE:
    obj = [[ComGoodowRealtimeStoreImplIndexReferenceImpl alloc] initWithComGoodowRealtimeStoreImplModelImpl:this$0_->model_];
    break;
    default:
    @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Shouldn't reach here!"];
  }
  ((ComGoodowRealtimeStoreImplCollaborativeObjectImpl *) nil_chk(obj))->id__ = component->id__;
  (void) [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(((ComGoodowRealtimeStoreImplModelImpl *) nil_chk(this$0_->model_))->objects_)) setWithNSString:obj->id__ withId:obj];
  this$0_->model_->bytesUsed_ += ((jint) [((NSString *) nil_chk([component description])) length]);
  this$0_->model_->bytesUsed_++;
}

- (instancetype)initWithComGoodowRealtimeStoreImplDocumentBridge:(ComGoodowRealtimeStoreImplDocumentBridge *)outer$
        withComGoodowRealtimeOperationImplCollaborativeOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)capture$0 {
  this$0_ = outer$;
  val$operation_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDocumentBridge_$5 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$operation_ = val$operation_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeOperationImplAbstractComponent:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreImplDocumentBridge:withComGoodowRealtimeOperationImplCollaborativeOperation:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.impl.DocumentBridge;", NULL,  },
    { "val$operation_", NULL, 0x1012, "Lcom.goodow.realtime.operation.impl.CollaborativeOperation;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplDocumentBridge_$5 = { 1, "$5", "com.goodow.realtime.store.impl", "DocumentBridge", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDocumentBridge_$5;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplDocumentBridge_$5)
