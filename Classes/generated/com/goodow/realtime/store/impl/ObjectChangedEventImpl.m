//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/ObjectChangedEventImpl.java
//

#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/goodow/realtime/store/impl/ObjectChangedEventImpl.h"

@implementation ComGoodowRealtimeStoreImplObjectChangedEventImpl

- (instancetype)initWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized {
  if (self = [super initWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(serialized)) setWithNSString:@"type" withId:[((ComGoodowRealtimeStoreEventTypeEnum *) nil_chk(ComGoodowRealtimeStoreEventTypeEnum_get_OBJECT_CHANGED())) name]])) setWithNSString:@"bubbles" withBoolean:YES]]) {
    self->events__ = [serialized getArrayWithNSString:@"events"];
  }
  return self;
}

- (id<ComGoodowRealtimeJsonJsonArray>)events {
  return events__;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplObjectChangedEventImpl *)other {
  [super copyAllFieldsTo:other];
  other->events__ = events__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeJsonJsonObject:", "ObjectChangedEventImpl", NULL, 0x1, NULL },
    { "events", NULL, "Lcom.goodow.realtime.json.JsonArray;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "events__", "events", 0x11, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplObjectChangedEventImpl = { 1, "ObjectChangedEventImpl", "com.goodow.realtime.store.impl", NULL, 0x0, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplObjectChangedEventImpl;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplObjectChangedEventImpl)
