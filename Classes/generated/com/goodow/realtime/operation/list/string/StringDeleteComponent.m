//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/string/StringDeleteComponent.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/impl/AbstractComponent.h"
#include "com/goodow/realtime/operation/list/AbstractDeleteComponent.h"
#include "com/goodow/realtime/operation/list/AbstractListComponent.h"
#include "com/goodow/realtime/operation/list/string/StringDeleteComponent.h"
#include "com/goodow/realtime/operation/list/string/StringHelper.h"
#include "com/goodow/realtime/operation/list/string/StringInsertComponent.h"

@implementation ComGoodowRealtimeOperationListStringStringDeleteComponent

+ (ComGoodowRealtimeOperationListStringStringDeleteComponent *)parseWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized {
  NSAssert([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serialized)) getNumberWithInt:0] == ComGoodowRealtimeOperationListAbstractDeleteComponent_TYPE && [serialized length] == 4, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/string/StringDeleteComponent.java:21 condition failed: assert serialized.getNumber(0) == TYPE && serialized.length() == 4;");
  return [[ComGoodowRealtimeOperationListStringStringDeleteComponent alloc] initWithNSString:[ComGoodowRealtimeOperationImplAbstractComponent parseIdWithComGoodowRealtimeJsonJsonArray:serialized] withInt:[ComGoodowRealtimeOperationListAbstractListComponent parseStartIndexWithComGoodowRealtimeJsonJsonArray:serialized] withInt:(int) [serialized getNumberWithInt:3]];
}

- (id)initWithNSString:(NSString *)id_
               withInt:(int)startIndex
               withInt:(int)length {
  return [super initWithNSString:id_ withInt:startIndex withInt:length];
}

- (id)initWithNSString:(NSString *)id_
               withInt:(int)startIndex
          withNSString:(NSString *)values {
  return [super initWithNSString:id_ withInt:startIndex withId:values];
}

- (ComGoodowRealtimeOperationListStringStringInsertComponent *)invert {
  NSAssert(values_ != nil, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/string/StringDeleteComponent.java:36 condition failed: assert values != null;");
  return [[ComGoodowRealtimeOperationListStringStringInsertComponent alloc] initWithNSString:id__ withInt:startIndex_ withNSString:values_];
}

- (ComGoodowRealtimeOperationListStringStringDeleteComponent *)createWithInt:(int)startIndex
                                                                     withInt:(int)length {
  return [[ComGoodowRealtimeOperationListStringStringDeleteComponent alloc] initWithNSString:id__ withInt:startIndex withInt:length];
}

- (ComGoodowRealtimeOperationListStringStringDeleteComponent *)createWithInt:(int)startIndex
                                                                      withId:(NSString *)values {
  return [[ComGoodowRealtimeOperationListStringStringDeleteComponent alloc] initWithNSString:id__ withInt:startIndex withNSString:values];
}

- (ComGoodowRealtimeOperationListStringStringHelper *)getHelper {
  return ComGoodowRealtimeOperationListStringStringHelper_get_INSTANCE_();
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "parseWithComGoodowRealtimeJsonJsonArray:", "parse", "Lcom.goodow.realtime.operation.list.string.StringDeleteComponent;", 0x9, NULL },
    { "initWithNSString:withInt:withInt:", "StringDeleteComponent", NULL, 0x1, NULL },
    { "initWithNSString:withInt:withNSString:", "StringDeleteComponent", NULL, 0x1, NULL },
    { "invert", NULL, "Lcom.goodow.realtime.operation.list.string.StringInsertComponent;", 0x1, NULL },
    { "createWithInt:withInt:", "create", "Lcom.goodow.realtime.operation.list.string.StringDeleteComponent;", 0x4, NULL },
    { "createWithInt:withNSString:", "create", "Lcom.goodow.realtime.operation.list.string.StringDeleteComponent;", 0x4, NULL },
    { "getHelper", NULL, "Lcom.goodow.realtime.operation.list.string.StringHelper;", 0x4, NULL },
  };
  static const char *superclass_type_args[] = {"Ljava.lang.String;"};
  static J2ObjcClassInfo _ComGoodowRealtimeOperationListStringStringDeleteComponent = { "StringDeleteComponent", "com.goodow.realtime.operation.list.string", NULL, 0x1, 7, methods, 0, NULL, 1, superclass_type_args};
  return &_ComGoodowRealtimeOperationListStringStringDeleteComponent;
}

@end
