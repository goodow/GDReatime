//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DefaultUndoRedoStateChangedEvent.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/Model.h"
#include "com/goodow/realtime/store/impl/DefaultUndoRedoStateChangedEvent.h"

@implementation ComGoodowRealtimeStoreImplDefaultUndoRedoStateChangedEvent

- (id)initWithComGoodowRealtimeStoreModel:(id<ComGoodowRealtimeStoreModel>)source
      withComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized {
  if (self = [super init]) {
    self->canUndo__ = [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(serialized)) getBooleanWithNSString:@"canUndo"];
    self->canRedo__ = [serialized getBooleanWithNSString:@"canRedo"];
  }
  return self;
}

- (BOOL)canRedo {
  return canRedo__;
}

- (BOOL)canUndo {
  return canUndo__;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDefaultUndoRedoStateChangedEvent *)other {
  [super copyAllFieldsTo:other];
  other->canRedo__ = canRedo__;
  other->canUndo__ = canUndo__;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeStoreModel:withComGoodowRealtimeJsonJsonObject:", "DefaultUndoRedoStateChangedEvent", NULL, 0x1, NULL },
    { "canRedo", NULL, "Z", 0x1, NULL },
    { "canUndo", NULL, "Z", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "canRedo__", "canRedo", 0x11, "Z", NULL,  },
    { "canUndo__", "canUndo", 0x11, "Z", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreImplDefaultUndoRedoStateChangedEvent = { "DefaultUndoRedoStateChangedEvent", "com.goodow.realtime.store.impl", NULL, 0x0, 3, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplDefaultUndoRedoStateChangedEvent;
}

@end
