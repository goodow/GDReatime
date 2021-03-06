//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/EventType.java
//

#ifndef _ComGoodowRealtimeStoreEventType_H_
#define _ComGoodowRealtimeStoreEventType_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, ComGoodowRealtimeStoreEventType) {
  ComGoodowRealtimeStoreEventType_COLLABORATOR_JOINED = 0,
  ComGoodowRealtimeStoreEventType_COLLABORATOR_LEFT = 1,
  ComGoodowRealtimeStoreEventType_DOCUMENT_SAVE_STATE_CHANGED = 2,
  ComGoodowRealtimeStoreEventType_OBJECT_CHANGED = 3,
  ComGoodowRealtimeStoreEventType_REFERENCE_SHIFTED = 4,
  ComGoodowRealtimeStoreEventType_TEXT_DELETED = 5,
  ComGoodowRealtimeStoreEventType_TEXT_INSERTED = 6,
  ComGoodowRealtimeStoreEventType_VALUES_ADDED = 7,
  ComGoodowRealtimeStoreEventType_VALUES_REMOVED = 8,
  ComGoodowRealtimeStoreEventType_VALUES_SET = 9,
  ComGoodowRealtimeStoreEventType_VALUE_CHANGED = 10,
  ComGoodowRealtimeStoreEventType_UNDO_REDO_STATE_CHANGED = 11,
};

@interface ComGoodowRealtimeStoreEventTypeEnum : JavaLangEnum < NSCopying > {
}

- (NSString *)description;

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal;

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *ComGoodowRealtimeStoreEventTypeEnum_values();

+ (ComGoodowRealtimeStoreEventTypeEnum *)valueOfWithNSString:(NSString *)name;

FOUNDATION_EXPORT ComGoodowRealtimeStoreEventTypeEnum *ComGoodowRealtimeStoreEventTypeEnum_valueOfWithNSString_(NSString *name);
- (id)copyWithZone:(NSZone *)zone;

@end

FOUNDATION_EXPORT BOOL ComGoodowRealtimeStoreEventTypeEnum_initialized;
J2OBJC_STATIC_INIT(ComGoodowRealtimeStoreEventTypeEnum)

FOUNDATION_EXPORT ComGoodowRealtimeStoreEventTypeEnum *ComGoodowRealtimeStoreEventTypeEnum_values_[];

#define ComGoodowRealtimeStoreEventTypeEnum_COLLABORATOR_JOINED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_COLLABORATOR_JOINED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, COLLABORATOR_JOINED)

#define ComGoodowRealtimeStoreEventTypeEnum_COLLABORATOR_LEFT ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_COLLABORATOR_LEFT]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, COLLABORATOR_LEFT)

#define ComGoodowRealtimeStoreEventTypeEnum_DOCUMENT_SAVE_STATE_CHANGED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_DOCUMENT_SAVE_STATE_CHANGED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, DOCUMENT_SAVE_STATE_CHANGED)

#define ComGoodowRealtimeStoreEventTypeEnum_OBJECT_CHANGED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_OBJECT_CHANGED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, OBJECT_CHANGED)

#define ComGoodowRealtimeStoreEventTypeEnum_REFERENCE_SHIFTED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_REFERENCE_SHIFTED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, REFERENCE_SHIFTED)

#define ComGoodowRealtimeStoreEventTypeEnum_TEXT_DELETED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_TEXT_DELETED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, TEXT_DELETED)

#define ComGoodowRealtimeStoreEventTypeEnum_TEXT_INSERTED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_TEXT_INSERTED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, TEXT_INSERTED)

#define ComGoodowRealtimeStoreEventTypeEnum_VALUES_ADDED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_VALUES_ADDED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, VALUES_ADDED)

#define ComGoodowRealtimeStoreEventTypeEnum_VALUES_REMOVED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_VALUES_REMOVED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, VALUES_REMOVED)

#define ComGoodowRealtimeStoreEventTypeEnum_VALUES_SET ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_VALUES_SET]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, VALUES_SET)

#define ComGoodowRealtimeStoreEventTypeEnum_VALUE_CHANGED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_VALUE_CHANGED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, VALUE_CHANGED)

#define ComGoodowRealtimeStoreEventTypeEnum_UNDO_REDO_STATE_CHANGED ComGoodowRealtimeStoreEventTypeEnum_values_[ComGoodowRealtimeStoreEventType_UNDO_REDO_STATE_CHANGED]
J2OBJC_ENUM_CONSTANT_GETTER(ComGoodowRealtimeStoreEventTypeEnum, UNDO_REDO_STATE_CHANGED)

J2OBJC_TYPE_LITERAL_HEADER(ComGoodowRealtimeStoreEventTypeEnum)

#endif // _ComGoodowRealtimeStoreEventType_H_
