//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/databinding/AlreadyBoundError.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/store/databinding/AlreadyBoundError.h"

@implementation ComGoodowRealtimeStoreDatabindingAlreadyBoundError

- (id)initWithId:(id)domElement {
  if (self = [super init]) {
    self->domElement_ = domElement;
  }
  return self;
}

- (id)getDomElement {
  return domElement_;
}

- (NSString *)getName {
  return name_;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreDatabindingAlreadyBoundError *)other {
  [super copyAllFieldsTo:other];
  other->domElement_ = domElement_;
  other->name_ = name_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithId:", "AlreadyBoundError", NULL, 0x1, NULL },
    { "getDomElement", NULL, "Ljava.lang.Object;", 0x1, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "domElement_", NULL, 0x12, "Ljava.lang.Object;", NULL,  },
    { "name_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreDatabindingAlreadyBoundError = { "AlreadyBoundError", "com.goodow.realtime.store.databinding", NULL, 0x1, 3, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreDatabindingAlreadyBoundError;
}

@end
