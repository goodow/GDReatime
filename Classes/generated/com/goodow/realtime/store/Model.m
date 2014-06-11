//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/Model.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "com/goodow/realtime/core/Handler.h"
#include "com/goodow/realtime/core/Registration.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/store/CollaborativeList.h"
#include "com/goodow/realtime/store/CollaborativeMap.h"
#include "com/goodow/realtime/store/CollaborativeString.h"
#include "com/goodow/realtime/store/Model.h"
#include "com/google/gwt/core/client/js/JsProperty.h"

@interface ComGoodowRealtimeStoreModel : NSObject
@end

@implementation ComGoodowRealtimeStoreModel

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "onUndoRedoStateChangedWithComGoodowRealtimeCoreHandler:", "onUndoRedoStateChanged", "Lcom.goodow.realtime.core.Registration;", 0x401, NULL },
    { "createListWithComGoodowRealtimeJsonJsonArray:", "createList", "Lcom.goodow.realtime.store.CollaborativeList;", 0x401, NULL },
    { "createMapWithComGoodowRealtimeJsonJsonObject:", "createMap", "Lcom.goodow.realtime.store.CollaborativeMap;", 0x401, NULL },
    { "createStringWithNSString:", "createString", "Lcom.goodow.realtime.store.CollaborativeString;", 0x401, NULL },
    { "getRoot", NULL, "Lcom.goodow.realtime.store.CollaborativeMap;", 0x401, NULL },
    { "redo", NULL, "V", 0x401, NULL },
    { "undo", NULL, "V", 0x401, NULL },
    { "canRedo", NULL, "Z", 0x401, NULL },
    { "canUndo", NULL, "Z", 0x401, NULL },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreModel = { "Model", "com.goodow.realtime.store", NULL, 0x201, 9, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeStoreModel;
}

@end
