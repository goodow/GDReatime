//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/ValuesRemovedEventImpl.java
//

#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/goodow/realtime/store/impl/ValuesRemovedEventImpl.h"

@implementation ComGoodowRealtimeStoreImplValuesRemovedEventImpl

- (instancetype)initWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized {
  if (self = [super initWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(serialized)) setWithNSString:@"type" withId:[((ComGoodowRealtimeStoreEventTypeEnum *) nil_chk(ComGoodowRealtimeStoreEventTypeEnum_get_VALUES_REMOVED())) name]])) setWithNSString:@"bubbles" withBoolean:NO]]) {
    self->index__ = J2ObjCFpToInt([serialized getNumberWithNSString:@"index"]);
    self->values__ = [serialized getArrayWithNSString:@"values"];
  }
  return self;
}

- (jint)index {
  return index__;
}

- (id<ComGoodowRealtimeJsonJsonArray>)values {
  return values__;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplValuesRemovedEventImpl *)other {
  [super copyAllFieldsTo:other];
  other->index__ = index__;
  other->values__ = values__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeJsonJsonObject:", "ValuesRemovedEventImpl", NULL, 0x1, NULL },
    { "index", NULL, "I", 0x1, NULL },
    { "values", NULL, "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "index__", "index", 0x11, "I", NULL,  },
    { "values__", "values", 0x11, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplValuesRemovedEventImpl = { 1, "ValuesRemovedEventImpl", "com.goodow.realtime.store.impl", NULL, 0x0, 3, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplValuesRemovedEventImpl;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplValuesRemovedEventImpl)
