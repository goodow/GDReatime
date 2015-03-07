//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/AbstractListComponent.java
//

#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/list/AbstractDeleteComponent.h"
#include "com/goodow/realtime/operation/list/AbstractListComponent.h"
#include "com/goodow/realtime/operation/list/ListHelper.h"

@implementation ComGoodowRealtimeOperationListAbstractListComponent

+ (jint)parseStartIndexWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized {
  return ComGoodowRealtimeOperationListAbstractListComponent_parseStartIndexWithComGoodowRealtimeJsonJsonArray_(serialized);
}

- (instancetype)initWithInt:(jint)type
               withNSString:(NSString *)id_
                    withInt:(jint)startIndex
                     withId:(id)values
                    withInt:(jint)length {
  if (self = [super initWithInt:type withNSString:id_]) {
    NSAssert(startIndex >= 0, @"com/goodow/realtime/operation/list/AbstractListComponent.java:30 condition failed: assert startIndex >= 0;");
    self->startIndex_ = startIndex;
    self->values_ = values;
    NSAssert(values != nil || length > 0, @"com/goodow/realtime/operation/list/AbstractListComponent.java:33 condition failed: assert values != null || length > 0;");
    self->length_ = length < 0 ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) lengthWithId:values] : length;
    NSAssert(values == nil || [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) lengthWithId:values] == self->length_, @"com/goodow/realtime/operation/list/AbstractListComponent.java:35 condition failed: assert values == null || getHelper().length(values) == this.length;");
    NSAssert(self->length_ > 0, @"com/goodow/realtime/operation/list/AbstractListComponent.java:36 condition failed: assert this.length > 0;");
  }
  return self;
}

- (jint)transformIndexReferenceWithInt:(jint)index
                           withBoolean:(jboolean)rigthSide
                           withBoolean:(jboolean)canBeDeleted {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<ComGoodowRealtimeOperationListListHelper>)getHelper {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)toJsonWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)json {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(json)) pushWithDouble:startIndex_];
  if ([self isKindOfClass:[ComGoodowRealtimeOperationListAbstractDeleteComponent class]]) {
    (void) [json pushWithDouble:length_];
  }
  else {
    (void) [json pushWithId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) toJsonWithId:values_]];
  }
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationListAbstractListComponent *)other {
  [super copyAllFieldsTo:other];
  other->startIndex_ = startIndex_;
  other->values_ = values_;
  other->length_ = length_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseStartIndexWithComGoodowRealtimeJsonJsonArray:", "parseStartIndex", "I", 0xc, NULL },
    { "initWithInt:withNSString:withInt:withId:withInt:", "AbstractListComponent", NULL, 0x4, NULL },
    { "transformIndexReferenceWithInt:withBoolean:withBoolean:", "transformIndexReference", "I", 0x401, NULL },
    { "getHelper", NULL, "Lcom.goodow.realtime.operation.list.ListHelper;", 0x404, NULL },
    { "toJsonWithComGoodowRealtimeJsonJsonArray:", "toJson", "V", 0x4, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "startIndex_", NULL, 0x14, "I", NULL,  },
    { "values_", NULL, 0x14, "TT;", NULL,  },
    { "length_", NULL, 0x14, "I", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lcom.goodow.realtime.operation.list.ListTarget;"};
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationListAbstractListComponent = { 1, "AbstractListComponent", "com.goodow.realtime.operation.list", NULL, 0x401, 5, methods, 3, fields, 1, superclass_type_args};
  return &_ComGoodowRealtimeOperationListAbstractListComponent;
}

@end

jint ComGoodowRealtimeOperationListAbstractListComponent_parseStartIndexWithComGoodowRealtimeJsonJsonArray_(id<ComGoodowRealtimeJsonJsonArray> serialized) {
  ComGoodowRealtimeOperationListAbstractListComponent_init();
  return J2ObjCFpToInt([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serialized)) getNumberWithInt:2]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationListAbstractListComponent)
