//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/EventType.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "com/goodow/realtime/store/EventType.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"

BOOL ComGoodowRealtimeStoreEventTypeEnum_initialized = NO;

ComGoodowRealtimeStoreEventTypeEnum *ComGoodowRealtimeStoreEventTypeEnum_values[12];

@implementation ComGoodowRealtimeStoreEventTypeEnum

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

- (NSString *)description {
  return [((NSString *) nil_chk([self name])) lowercaseString];
}

- (id)initWithNSString:(NSString *)__name withInt:(int)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

+ (void)initialize {
  if (self == [ComGoodowRealtimeStoreEventTypeEnum class]) {
    ComGoodowRealtimeStoreEventTypeEnum_COLLABORATOR_JOINED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"COLLABORATOR_JOINED" withInt:0];
    ComGoodowRealtimeStoreEventTypeEnum_COLLABORATOR_LEFT = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"COLLABORATOR_LEFT" withInt:1];
    ComGoodowRealtimeStoreEventTypeEnum_DOCUMENT_SAVE_STATE_CHANGED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"DOCUMENT_SAVE_STATE_CHANGED" withInt:2];
    ComGoodowRealtimeStoreEventTypeEnum_OBJECT_CHANGED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"OBJECT_CHANGED" withInt:3];
    ComGoodowRealtimeStoreEventTypeEnum_REFERENCE_SHIFTED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"REFERENCE_SHIFTED" withInt:4];
    ComGoodowRealtimeStoreEventTypeEnum_TEXT_DELETED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"TEXT_DELETED" withInt:5];
    ComGoodowRealtimeStoreEventTypeEnum_TEXT_INSERTED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"TEXT_INSERTED" withInt:6];
    ComGoodowRealtimeStoreEventTypeEnum_VALUES_ADDED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"VALUES_ADDED" withInt:7];
    ComGoodowRealtimeStoreEventTypeEnum_VALUES_REMOVED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"VALUES_REMOVED" withInt:8];
    ComGoodowRealtimeStoreEventTypeEnum_VALUES_SET = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"VALUES_SET" withInt:9];
    ComGoodowRealtimeStoreEventTypeEnum_VALUE_CHANGED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"VALUE_CHANGED" withInt:10];
    ComGoodowRealtimeStoreEventTypeEnum_UNDO_REDO_STATE_CHANGED = [[ComGoodowRealtimeStoreEventTypeEnum alloc] initWithNSString:@"UNDO_REDO_STATE_CHANGED" withInt:11];
    ComGoodowRealtimeStoreEventTypeEnum_initialized = YES;
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithObjects:ComGoodowRealtimeStoreEventTypeEnum_values count:12 type:[IOSClass classWithClass:[ComGoodowRealtimeStoreEventTypeEnum class]]];
}

+ (ComGoodowRealtimeStoreEventTypeEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < 12; i++) {
    ComGoodowRealtimeStoreEventTypeEnum *e = ComGoodowRealtimeStoreEventTypeEnum_values[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const char *superclass_type_args[] = {"Lcom.goodow.realtime.store.EventType;"};
  static J2ObjcClassInfo _ComGoodowRealtimeStoreEventTypeEnum = { "EventType", "com.goodow.realtime.store", NULL, 0x4011, 2, methods, 0, NULL, 1, superclass_type_args};
  return &_ComGoodowRealtimeStoreEventTypeEnum;
}

@end
