//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/JsonSerializer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/json/JsonType.h"
#include "com/goodow/realtime/store/CollaborativeObject.h"
#include "com/goodow/realtime/store/impl/CollaborativeObjectImpl.h"
#include "com/goodow/realtime/store/impl/JsonSerializer.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"

@interface ComGoodowRealtimeStoreImplJsonSerializer () {
}
@end

@interface ComGoodowRealtimeStoreImplJsonSerializer_$1 () {
 @public
  id<ComGoodowRealtimeJsonJsonArray> val$array_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplJsonSerializer_$1, val$array_, id<ComGoodowRealtimeJsonJsonArray>)

@implementation ComGoodowRealtimeStoreImplJsonSerializer

+ (id)deserializeObjectWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)arrayOrNull
                      withComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)objects {
  return ComGoodowRealtimeStoreImplJsonSerializer_deserializeObjectWithComGoodowRealtimeJsonJsonArray_withComGoodowRealtimeJsonJsonObject_(arrayOrNull, objects);
}

+ (id<ComGoodowRealtimeJsonJsonArray>)serializeObjectWithId:(id)obj {
  return ComGoodowRealtimeStoreImplJsonSerializer_serializeObjectWithId_(obj);
}

+ (id<ComGoodowRealtimeJsonJsonArray>)serializeObjectsWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)values {
  return ComGoodowRealtimeStoreImplJsonSerializer_serializeObjectsWithComGoodowRealtimeJsonJsonArray_(values);
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "deserializeObjectWithComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeJsonJsonObject:", "deserializeObject", "Ljava.lang.Object;", 0x9, NULL },
    { "serializeObjectWithId:", "serializeObject", "Lcom.goodow.realtime.json.JsonArray;", 0x9, NULL },
    { "serializeObjectsWithComGoodowRealtimeJsonJsonArray:", "serializeObjects", "Lcom.goodow.realtime.json.JsonArray;", 0x9, NULL },
    { "init", NULL, NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "REFERENCE_TYPE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComGoodowRealtimeStoreImplJsonSerializer_REFERENCE_TYPE },
    { "VALUE_TYPE_", NULL, 0x1a, "I", NULL, .constantValue.asInt = ComGoodowRealtimeStoreImplJsonSerializer_VALUE_TYPE },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplJsonSerializer = { 1, "JsonSerializer", "com.goodow.realtime.store.impl", NULL, 0x0, 4, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplJsonSerializer;
}

@end

id ComGoodowRealtimeStoreImplJsonSerializer_deserializeObjectWithComGoodowRealtimeJsonJsonArray_withComGoodowRealtimeJsonJsonObject_(id<ComGoodowRealtimeJsonJsonArray> arrayOrNull, id<ComGoodowRealtimeJsonJsonObject> objects) {
  ComGoodowRealtimeStoreImplJsonSerializer_init();
  if (arrayOrNull == nil) {
    return nil;
  }
  switch (J2ObjCFpToInt([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(arrayOrNull)) getNumberWithInt:0])) {
    case ComGoodowRealtimeStoreImplJsonSerializer_VALUE_TYPE:
    switch ([[arrayOrNull getTypeWithInt:1] ordinal]) {
      case ComGoodowRealtimeJsonJsonType_BOOLEAN:
      return JavaLangBoolean_valueOfWithBoolean_([arrayOrNull getBooleanWithInt:1]);
      case ComGoodowRealtimeJsonJsonType_NUMBER:
      return JavaLangDouble_valueOfWithDouble_([arrayOrNull getNumberWithInt:1]);
      case ComGoodowRealtimeJsonJsonType_STRING:
      return [arrayOrNull getStringWithInt:1];
      case ComGoodowRealtimeJsonJsonType_OBJECT:
      return [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk([arrayOrNull getObjectWithInt:1])) copy__];
      case ComGoodowRealtimeJsonJsonType_ARRAY:
      return [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([arrayOrNull getArrayWithInt:1])) copy__];
      case ComGoodowRealtimeJsonJsonType_NULL:
      default:
      @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Should not reach here!"];
    }
    case ComGoodowRealtimeStoreImplJsonSerializer_REFERENCE_TYPE:
    return [((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(objects)) getWithNSString:[arrayOrNull getStringWithInt:1]];
    default:
    @throw [[JavaLangUnsupportedOperationException alloc] init];
  }
}

id<ComGoodowRealtimeJsonJsonArray> ComGoodowRealtimeStoreImplJsonSerializer_serializeObjectWithId_(id obj) {
  ComGoodowRealtimeStoreImplJsonSerializer_init();
  if (obj == nil) {
    return nil;
  }
  id<ComGoodowRealtimeJsonJsonArray> array = ComGoodowRealtimeJsonJson_createArray();
  if ([obj isKindOfClass:[NSString class]]) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithDouble:ComGoodowRealtimeStoreImplJsonSerializer_VALUE_TYPE])) pushWithId:obj];
  }
  else if ([obj isKindOfClass:[ComGoodowRealtimeStoreImplCollaborativeObjectImpl class]]) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithDouble:ComGoodowRealtimeStoreImplJsonSerializer_REFERENCE_TYPE])) pushWithId:[((id<ComGoodowRealtimeStoreCollaborativeObject>) nil_chk(((id<ComGoodowRealtimeStoreCollaborativeObject>) check_protocol_cast(obj, @protocol(ComGoodowRealtimeStoreCollaborativeObject))))) id__]];
  }
  else if ([ComGoodowRealtimeJsonJsonObject_class_() isInstance:obj]) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithDouble:ComGoodowRealtimeStoreImplJsonSerializer_VALUE_TYPE])) pushWithId:[((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(((id<ComGoodowRealtimeJsonJsonObject>) check_protocol_cast(obj, @protocol(ComGoodowRealtimeJsonJsonObject))))) copy__]];
  }
  else if ([ComGoodowRealtimeJsonJsonArray_class_() isInstance:obj]) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithDouble:ComGoodowRealtimeStoreImplJsonSerializer_VALUE_TYPE])) pushWithId:[((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(((id<ComGoodowRealtimeJsonJsonArray>) check_protocol_cast(obj, @protocol(ComGoodowRealtimeJsonJsonArray))))) copy__]];
  }
  else if ([obj isKindOfClass:[NSNumber class]]) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithDouble:ComGoodowRealtimeStoreImplJsonSerializer_VALUE_TYPE])) pushWithDouble:[((NSNumber *) nil_chk(((NSNumber *) check_class_cast(obj, [NSNumber class])))) doubleValue]];
  }
  else if ([obj isKindOfClass:[JavaLangBoolean class]]) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(array)) pushWithDouble:ComGoodowRealtimeStoreImplJsonSerializer_VALUE_TYPE])) pushWithBoolean:[((JavaLangBoolean *) nil_chk(((JavaLangBoolean *) check_class_cast(obj, [JavaLangBoolean class])))) booleanValue]];
  }
  else {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$", @"Invalid JSON type: ", [[nil_chk(obj) getClass] getName])];
  }
  return array;
}

id<ComGoodowRealtimeJsonJsonArray> ComGoodowRealtimeStoreImplJsonSerializer_serializeObjectsWithComGoodowRealtimeJsonJsonArray_(id<ComGoodowRealtimeJsonJsonArray> values) {
  ComGoodowRealtimeStoreImplJsonSerializer_init();
  id<ComGoodowRealtimeJsonJsonArray> array = ComGoodowRealtimeJsonJson_createArray();
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(values)) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeStoreImplJsonSerializer_$1 alloc] initWithComGoodowRealtimeJsonJsonArray:array]];
  return array;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplJsonSerializer)

@implementation ComGoodowRealtimeStoreImplJsonSerializer_$1

- (void)callWithInt:(jint)index
             withId:(id)obj {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$array_)) pushWithId:ComGoodowRealtimeStoreImplJsonSerializer_serializeObjectWithId_(obj)];
}

- (instancetype)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  val$array_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplJsonSerializer_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$array_ = val$array_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withId:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$array_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreImplJsonSerializer_$1 = { 1, "$1", "com.goodow.realtime.store.impl", "JsonSerializer", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreImplJsonSerializer_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreImplJsonSerializer_$1)
