//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/string/StringInsertComponent.java
//

#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/impl/AbstractComponent.h"
#include "com/goodow/realtime/operation/list/AbstractInsertComponent.h"
#include "com/goodow/realtime/operation/list/AbstractListComponent.h"
#include "com/goodow/realtime/operation/list/string/StringDeleteComponent.h"
#include "com/goodow/realtime/operation/list/string/StringHelper.h"
#include "com/goodow/realtime/operation/list/string/StringInsertComponent.h"

@implementation ComGoodowRealtimeOperationListStringStringInsertComponent

+ (ComGoodowRealtimeOperationListStringStringInsertComponent *)parseWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized {
  return ComGoodowRealtimeOperationListStringStringInsertComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
}

- (instancetype)initWithNSString:(NSString *)id_
                         withInt:(jint)startIndex
                    withNSString:(NSString *)values {
  return [super initWithNSString:id_ withInt:startIndex withId:values];
}

- (ComGoodowRealtimeOperationListStringStringDeleteComponent *)invert {
  return [[ComGoodowRealtimeOperationListStringStringDeleteComponent alloc] initWithNSString:id__ withInt:startIndex_ withNSString:values_];
}

- (ComGoodowRealtimeOperationListStringStringInsertComponent *)createWithInt:(jint)startIndex
                                                                      withId:(NSString *)values {
  return [[ComGoodowRealtimeOperationListStringStringInsertComponent alloc] initWithNSString:id__ withInt:startIndex withNSString:values];
}

- (ComGoodowRealtimeOperationListStringStringHelper *)getHelper {
  return ComGoodowRealtimeOperationListStringStringHelper_get_INSTANCE_();
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "parseWithComGoodowRealtimeJsonJsonArray:", "parse", "Lcom.goodow.realtime.operation.list.string.StringInsertComponent;", 0x9, NULL },
    { "initWithNSString:withInt:withNSString:", "StringInsertComponent", NULL, 0x1, NULL },
    { "invert", NULL, "Lcom.goodow.realtime.operation.list.string.StringDeleteComponent;", 0x1, NULL },
    { "createWithInt:withNSString:", "create", "Lcom.goodow.realtime.operation.list.string.StringInsertComponent;", 0x4, NULL },
    { "getHelper", NULL, "Lcom.goodow.realtime.operation.list.string.StringHelper;", 0x4, NULL },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.String;"};
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationListStringStringInsertComponent = { 1, "StringInsertComponent", "com.goodow.realtime.operation.list.string", NULL, 0x1, 5, methods, 0, NULL, 1, superclass_type_args};
  return &_ComGoodowRealtimeOperationListStringStringInsertComponent;
}

@end

ComGoodowRealtimeOperationListStringStringInsertComponent *ComGoodowRealtimeOperationListStringStringInsertComponent_parseWithComGoodowRealtimeJsonJsonArray_(id<ComGoodowRealtimeJsonJsonArray> serialized) {
  ComGoodowRealtimeOperationListStringStringInsertComponent_init();
  NSCAssert([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serialized)) getNumberWithInt:0] == ComGoodowRealtimeOperationListAbstractInsertComponent_TYPE && [serialized length] == 4, @"com/goodow/realtime/operation/list/string/StringInsertComponent.java:21 condition failed: assert serialized.getNumber(0) == TYPE && serialized.length() == 4;");
  NSString *values = [((ComGoodowRealtimeOperationListStringStringHelper *) nil_chk(ComGoodowRealtimeOperationListStringStringHelper_get_INSTANCE_())) parseValuesWithComGoodowRealtimeJsonJsonArray:[serialized getArrayWithInt:3]];
  return [[ComGoodowRealtimeOperationListStringStringInsertComponent alloc] initWithNSString:ComGoodowRealtimeOperationImplAbstractComponent_parseIdWithComGoodowRealtimeJsonJsonArray_(serialized) withInt:ComGoodowRealtimeOperationListAbstractListComponent_parseStartIndexWithComGoodowRealtimeJsonJsonArray_(serialized) withNSString:values];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationListStringStringInsertComponent)
