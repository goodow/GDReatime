//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/UndoRedoStateChangedEventImpl.java
//

#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/Model.h"
#include "com/goodow/realtime/store/impl/UndoRedoStateChangedEventImpl.h"

@implementation ComGoodowRealtimeStoreImplUndoRedoStateChangedEventImpl

- (instancetype)initWithComGoodowRealtimeStoreModel:(id<ComGoodowRealtimeStoreModel>)source
                withComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized {
  if (self = [super init]) {
    self->canUndo__ = [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(serialized)) getBooleanWithNSString:@"canUndo"];
    self->canRedo__ = [serialized getBooleanWithNSString:@"canRedo"];
  }
  return self;
}

- (jboolean)canRedo {
  return canRedo__;
}

- (jboolean)canUndo {
  return canUndo__;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplUndoRedoStateChangedEventImpl *)other {
  [super copyAllFieldsTo:other];
  other->canRedo__ = canRedo__;
  other->canUndo__ = canUndo__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeStoreModel:withComGoodowRealtimeJsonJsonObject:", "UndoRedoStateChangedEventImpl", NULL, 0x1, NULL },
    { "canRedo", NULL, "Z", 0x1, NULL },
    { "canUndo", NULL, "Z", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "canRedo__", "canRedo", 0x11, "Z", NULL,  },
    { "canUndo__", "canUndo", 0x11, "Z", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplUndoRedoStateChangedEventImpl = { 1, "UndoRedoStateChangedEventImpl", "com.goodow.realtime.store.impl", NULL, 0x0, 3, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplUndoRedoStateChangedEventImpl;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplUndoRedoStateChangedEventImpl)
