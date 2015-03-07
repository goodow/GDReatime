//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/json/JsonDeleteComponent.java
//

#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/impl/AbstractComponent.h"
#include "com/goodow/realtime/operation/list/AbstractDeleteComponent.h"
#include "com/goodow/realtime/operation/list/AbstractListComponent.h"
#include "com/goodow/realtime/operation/list/json/JsonDeleteComponent.h"
#include "com/goodow/realtime/operation/list/json/JsonHelper.h"
#include "com/goodow/realtime/operation/list/json/JsonInsertComponent.h"

@implementation ComGoodowRealtimeOperationListJsonJsonDeleteComponent

+ (ComGoodowRealtimeOperationListJsonJsonDeleteComponent *)parseWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized {
  return ComGoodowRealtimeOperationListJsonJsonDeleteComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
}

- (instancetype)initWithNSString:(NSString *)id_
                         withInt:(jint)startIndex
                         withInt:(jint)length {
  return [super initWithNSString:id_ withInt:startIndex withInt:length];
}

- (instancetype)initWithNSString:(NSString *)id_
                         withInt:(jint)startIndex
withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)values {
  return [super initWithNSString:id_ withInt:startIndex withId:values];
}

- (ComGoodowRealtimeOperationListJsonJsonInsertComponent *)invert {
  NSAssert(values_ != nil, @"com/goodow/realtime/operation/list/json/JsonDeleteComponent.java:36 condition failed: assert values != null;");
  return [[ComGoodowRealtimeOperationListJsonJsonInsertComponent alloc] initWithNSString:id__ withInt:startIndex_ withComGoodowRealtimeJsonJsonArray:values_];
}

- (ComGoodowRealtimeOperationListJsonJsonDeleteComponent *)createWithInt:(jint)startIndex
                                                                 withInt:(jint)length {
  return [[ComGoodowRealtimeOperationListJsonJsonDeleteComponent alloc] initWithNSString:id__ withInt:startIndex withInt:length];
}

- (ComGoodowRealtimeOperationListJsonJsonDeleteComponent *)createWithInt:(jint)startIndex
                                                                  withId:(id<ComGoodowRealtimeJsonJsonArray>)values {
  return [[ComGoodowRealtimeOperationListJsonJsonDeleteComponent alloc] initWithNSString:id__ withInt:startIndex withComGoodowRealtimeJsonJsonArray:values];
}

- (ComGoodowRealtimeOperationListJsonJsonHelper *)getHelper {
  return ComGoodowRealtimeOperationListJsonJsonHelper_get_INSTANCE_();
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseWithComGoodowRealtimeJsonJsonArray:", "parse", "Lcom.goodow.realtime.operation.list.json.JsonDeleteComponent;", 0x9, NULL },
    { "initWithNSString:withInt:withInt:", "JsonDeleteComponent", NULL, 0x1, NULL },
    { "initWithNSString:withInt:withComGoodowRealtimeJsonJsonArray:", "JsonDeleteComponent", NULL, 0x1, NULL },
    { "invert", NULL, "Lcom.goodow.realtime.operation.list.json.JsonInsertComponent;", 0x1, NULL },
    { "createWithInt:withInt:", "create", "Lcom.goodow.realtime.operation.list.json.JsonDeleteComponent;", 0x4, NULL },
    { "createWithInt:withComGoodowRealtimeJsonJsonArray:", "create", "Lcom.goodow.realtime.operation.list.json.JsonDeleteComponent;", 0x4, NULL },
    { "getHelper", NULL, "Lcom.goodow.realtime.operation.list.json.JsonHelper;", 0x4, NULL },
  };
  static const char *superclass_type_args[] = {"Lcom.goodow.realtime.json.JsonArray;"};
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationListJsonJsonDeleteComponent = { 1, "JsonDeleteComponent", "com.goodow.realtime.operation.list.json", NULL, 0x1, 7, methods, 0, NULL, 1, superclass_type_args};
  return &_ComGoodowRealtimeOperationListJsonJsonDeleteComponent;
}

@end

ComGoodowRealtimeOperationListJsonJsonDeleteComponent *ComGoodowRealtimeOperationListJsonJsonDeleteComponent_parseWithComGoodowRealtimeJsonJsonArray_(id<ComGoodowRealtimeJsonJsonArray> serialized) {
  ComGoodowRealtimeOperationListJsonJsonDeleteComponent_init();
  NSCAssert([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serialized)) getNumberWithInt:0] == ComGoodowRealtimeOperationListAbstractDeleteComponent_TYPE && [serialized length] == 4, @"com/goodow/realtime/operation/list/json/JsonDeleteComponent.java:21 condition failed: assert serialized.getNumber(0) == TYPE && serialized.length() == 4;");
  return [[ComGoodowRealtimeOperationListJsonJsonDeleteComponent alloc] initWithNSString:ComGoodowRealtimeOperationImplAbstractComponent_parseIdWithComGoodowRealtimeJsonJsonArray_(serialized) withInt:ComGoodowRealtimeOperationListAbstractListComponent_parseStartIndexWithComGoodowRealtimeJsonJsonArray_(serialized) withInt:J2ObjCFpToInt([serialized getNumberWithInt:3])];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationListJsonJsonDeleteComponent)
