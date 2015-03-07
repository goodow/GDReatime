//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/OperationComponent.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/JsonElement.h"
#include "com/goodow/realtime/operation/Operation.h"
#include "com/goodow/realtime/operation/OperationComponent.h"
#include "java/lang/UnsupportedOperationException.h"

#pragma clang diagnostic ignored "-Wprotocol"

__attribute__((unused)) static NSString *ComGoodowRealtimeOperationOperationComponent_getMessageWithComGoodowRealtimeOperationOperation_withBoolean_(ComGoodowRealtimeOperationOperationComponent *self, id<ComGoodowRealtimeOperationOperation> other, jboolean applied);

@interface ComGoodowRealtimeOperationOperationComponent ()

- (NSString *)getMessageWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)other
                                                    withBoolean:(jboolean)applied;
@end

@implementation ComGoodowRealtimeOperationOperationComponent

- (id<ComGoodowRealtimeOperationOperation>)transformWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)other
                                                                                withBoolean:(jboolean)applied {
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:ComGoodowRealtimeOperationOperationComponent_getMessageWithComGoodowRealtimeOperationOperation_withBoolean_(self, other, applied)];
}

- (IOSObjectArray *)transformComponentWithComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)other
                                                                           withBoolean:(jboolean)applied {
  @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:ComGoodowRealtimeOperationOperationComponent_getMessageWithComGoodowRealtimeOperationOperation_withBoolean_(self, other, applied)];
}

- (NSString *)getMessageWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)other
                                                    withBoolean:(jboolean)applied {
  return ComGoodowRealtimeOperationOperationComponent_getMessageWithComGoodowRealtimeOperationOperation_withBoolean_(self, other, applied);
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "transformWithComGoodowRealtimeOperationOperation:withBoolean:", "transform", "Lcom.goodow.realtime.operation.Operation;", 0x1, NULL },
    { "transformComponentWithComGoodowRealtimeOperationOperationComponent:withBoolean:", "transformComponent", "[Lcom.goodow.realtime.operation.OperationComponent;", 0x1, NULL },
    { "getMessageWithComGoodowRealtimeOperationOperation:withBoolean:", "getMessage", "Ljava.lang.String;", 0x2, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationOperationComponent = { 1, "OperationComponent", "com.goodow.realtime.operation", NULL, 0x401, 4, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeOperationOperationComponent;
}

@end

NSString *ComGoodowRealtimeOperationOperationComponent_getMessageWithComGoodowRealtimeOperationOperation_withBoolean_(ComGoodowRealtimeOperationOperationComponent *self, id<ComGoodowRealtimeOperationOperation> other, jboolean applied) {
  return JreStrcat("$Z$$$$", @"Transform applied(", applied, @") ", [((id<ComGoodowRealtimeJsonJsonElement>) nil_chk([self toJson])) toJsonString], @"\nAgainst ", [((id<ComGoodowRealtimeJsonJsonElement>) nil_chk([((id<ComGoodowRealtimeOperationOperation>) nil_chk(other)) toJson])) toJsonString]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationOperationComponent)
