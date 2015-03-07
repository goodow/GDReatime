//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/ValueChangedEventImpl.java
//

#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/EventType.h"
#include "com/goodow/realtime/store/impl/ValueChangedEventImpl.h"

@implementation ComGoodowRealtimeStoreImplValueChangedEventImpl

- (instancetype)initWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized {
  if (self = [super initWithComGoodowRealtimeJsonJsonObject:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(serialized)) setWithNSString:@"type" withId:[((ComGoodowRealtimeStoreEventTypeEnum *) nil_chk(ComGoodowRealtimeStoreEventTypeEnum_get_VALUE_CHANGED())) name]])) setWithNSString:@"bubbles" withBoolean:NO]]) {
    self->property__ = [serialized getStringWithNSString:@"property"];
    self->newValue__ = [serialized getWithNSString:@"newValue"];
    self->oldValue__ = [serialized getWithNSString:@"oldValue"];
  }
  return self;
}

- (id)newValue {
  return newValue__;
}

- (id)oldValue {
  return oldValue__;
}

- (NSString *)property {
  return property__;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplValueChangedEventImpl *)other {
  [super copyAllFieldsTo:other];
  other->newValue__ = newValue__;
  other->oldValue__ = oldValue__;
  other->property__ = property__;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeJsonJsonObject:", "ValueChangedEventImpl", NULL, 0x1, NULL },
    { "newValue", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "oldValue", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "property", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "newValue__", "newValue", 0x11, "Ljava.lang.Object;", NULL,  },
    { "oldValue__", "oldValue", 0x11, "Ljava.lang.Object;", NULL,  },
    { "property__", "property", 0x11, "Ljava.lang.String;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplValueChangedEventImpl = { 1, "ValueChangedEventImpl", "com.goodow.realtime.store.impl", NULL, 0x0, 4, methods, 3, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplValueChangedEventImpl;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplValueChangedEventImpl)
