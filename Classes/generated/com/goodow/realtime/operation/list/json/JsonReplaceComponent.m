//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/json/JsonReplaceComponent.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/impl/AbstractComponent.h"
#include "com/goodow/realtime/operation/list/AbstractListComponent.h"
#include "com/goodow/realtime/operation/list/AbstractReplaceComponent.h"
#include "com/goodow/realtime/operation/list/json/JsonHelper.h"
#include "com/goodow/realtime/operation/list/json/JsonReplaceComponent.h"

@implementation ComGoodowRealtimeOperationListJsonJsonReplaceComponent

+ (ComGoodowRealtimeOperationListJsonJsonReplaceComponent *)parseWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized {
  return ComGoodowRealtimeOperationListJsonJsonReplaceComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
}

- (instancetype)initWithNSString:(NSString *)id_
                         withInt:(jint)startIndex
withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)oldValues
withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)newValues {
  return [super initWithNSString:id_ withInt:startIndex withId:oldValues withId:newValues];
}

- (ComGoodowRealtimeOperationListJsonJsonReplaceComponent *)invert {
  NSAssert(oldValues_ != nil, @"com/goodow/realtime/operation/list/json/JsonReplaceComponent.java:33 condition failed: assert oldValues != null;");
  return [[ComGoodowRealtimeOperationListJsonJsonReplaceComponent alloc] initWithNSString:id__ withInt:startIndex_ withComGoodowRealtimeJsonJsonArray:values_ withComGoodowRealtimeJsonJsonArray:oldValues_];
}

- (ComGoodowRealtimeOperationListJsonJsonReplaceComponent *)createWithInt:(jint)startIndex
                                                                   withId:(id<ComGoodowRealtimeJsonJsonArray>)oldValues
                                                                   withId:(id<ComGoodowRealtimeJsonJsonArray>)newValues {
  return [[ComGoodowRealtimeOperationListJsonJsonReplaceComponent alloc] initWithNSString:id__ withInt:startIndex withComGoodowRealtimeJsonJsonArray:oldValues withComGoodowRealtimeJsonJsonArray:newValues];
}

- (ComGoodowRealtimeOperationListJsonJsonHelper *)getHelper {
  return ComGoodowRealtimeOperationListJsonJsonHelper_get_INSTANCE_();
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseWithComGoodowRealtimeJsonJsonArray:", "parse", "Lcom.goodow.realtime.operation.list.json.JsonReplaceComponent;", 0x9, NULL },
    { "initWithNSString:withInt:withComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeJsonJsonArray:", "JsonReplaceComponent", NULL, 0x1, NULL },
    { "invert", NULL, "Lcom.goodow.realtime.operation.list.json.JsonReplaceComponent;", 0x1, NULL },
    { "createWithInt:withComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeJsonJsonArray:", "create", "Lcom.goodow.realtime.operation.list.json.JsonReplaceComponent;", 0x4, NULL },
    { "getHelper", NULL, "Lcom.goodow.realtime.operation.list.json.JsonHelper;", 0x4, NULL },
  };
  static const char *superclass_type_args[] = {"Lcom.goodow.realtime.json.JsonArray;"};
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationListJsonJsonReplaceComponent = { 1, "JsonReplaceComponent", "com.goodow.realtime.operation.list.json", NULL, 0x1, 5, methods, 0, NULL, 1, superclass_type_args};
  return &_ComGoodowRealtimeOperationListJsonJsonReplaceComponent;
}

@end

ComGoodowRealtimeOperationListJsonJsonReplaceComponent *ComGoodowRealtimeOperationListJsonJsonReplaceComponent_parseWithComGoodowRealtimeJsonJsonArray_(id<ComGoodowRealtimeJsonJsonArray> serialized) {
  ComGoodowRealtimeOperationListJsonJsonReplaceComponent_init();
  NSCAssert([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serialized)) getNumberWithInt:0] == ComGoodowRealtimeOperationListAbstractReplaceComponent_TYPE && [serialized length] == 4, @"com/goodow/realtime/operation/list/json/JsonReplaceComponent.java:21 condition failed: assert serialized.getNumber(0) == TYPE && serialized.length() == 4;");
  id<ComGoodowRealtimeJsonJsonArray> values = [((ComGoodowRealtimeOperationListJsonJsonHelper *) nil_chk(ComGoodowRealtimeOperationListJsonJsonHelper_get_INSTANCE_())) parseValuesWithComGoodowRealtimeJsonJsonArray:[serialized getArrayWithInt:3]];
  return [[ComGoodowRealtimeOperationListJsonJsonReplaceComponent alloc] initWithNSString:ComGoodowRealtimeOperationImplAbstractComponent_parseIdWithComGoodowRealtimeJsonJsonArray_(serialized) withInt:ComGoodowRealtimeOperationListAbstractListComponent_parseStartIndexWithComGoodowRealtimeJsonJsonArray_(serialized) withComGoodowRealtimeJsonJsonArray:nil withComGoodowRealtimeJsonJsonArray:values];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationListJsonJsonReplaceComponent)
