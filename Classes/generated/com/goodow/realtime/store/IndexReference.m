//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/IndexReference.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/goodow/realtime/core/Handler.h"
#include "com/goodow/realtime/core/Registration.h"
#include "com/goodow/realtime/store/CollaborativeObject.h"
#include "com/goodow/realtime/store/IndexReference.h"
#include "com/google/gwt/core/client/js/JsType.h"

@interface ComGoodowRealtimeStoreIndexReference : NSObject
@end

@implementation ComGoodowRealtimeStoreIndexReference

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onReferenceShiftedWithComGoodowRealtimeCoreHandler:", "onReferenceShifted", "Lcom.goodow.realtime.core.Registration;", 0x401, NULL },
    { "canBeDeleted", NULL, "Z", 0x401, NULL },
    { "index", NULL, "I", 0x401, NULL },
    { "setIndexWithInt:", "setIndex", "V", 0x401, NULL },
    { "referencedObject", NULL, "TT;", 0x401, NULL },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeStoreIndexReference = { 1, "IndexReference", "com.goodow.realtime.store", NULL, 0x201, 5, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeStoreIndexReference;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ComGoodowRealtimeStoreIndexReference)
