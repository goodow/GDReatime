//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/AbstractDeleteComponent.java
//
//  Created by retechretech.
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "com/goodow/realtime/operation/Operation.h"
#include "com/goodow/realtime/operation/OperationComponent.h"
#include "com/goodow/realtime/operation/impl/AbstractComponent.h"
#include "com/goodow/realtime/operation/list/AbstractDeleteComponent.h"
#include "com/goodow/realtime/operation/list/AbstractInsertComponent.h"
#include "com/goodow/realtime/operation/list/AbstractListComponent.h"
#include "com/goodow/realtime/operation/list/AbstractReplaceComponent.h"
#include "com/goodow/realtime/operation/list/ListHelper.h"
#include "com/goodow/realtime/operation/list/ListTarget.h"
#include "java/lang/RuntimeException.h"

@implementation ComGoodowRealtimeOperationListAbstractDeleteComponent

- (id)initWithNSString:(NSString *)id_
               withInt:(int)startIndex
               withInt:(int)length {
  return [super initWithInt:ComGoodowRealtimeOperationListAbstractDeleteComponent_TYPE withNSString:id_ withInt:startIndex withId:nil withInt:length];
}

- (id)initWithNSString:(NSString *)id_
               withInt:(int)startIndex
                withId:(id)values {
  return [super initWithInt:ComGoodowRealtimeOperationListAbstractDeleteComponent_TYPE withNSString:id_ withInt:startIndex withId:values withInt:-1];
}

- (void)applyWithId:(id<ComGoodowRealtimeOperationListListTarget>)target {
  [((id<ComGoodowRealtimeOperationListListTarget>) nil_chk(target)) delete__WithInt:startIndex_ withInt:length_];
}

- (id<ComGoodowRealtimeOperationOperation>)transformWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)other
                                                                                withBoolean:(BOOL)applied {
  NSAssert([(id) other isKindOfClass:[ComGoodowRealtimeOperationListAbstractListComponent class]] && [self isSameIdWithComGoodowRealtimeOperationOperation:other], @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/AbstractDeleteComponent.java:37 condition failed: assert other instanceof AbstractListComponent && isSameId(other);");
  ComGoodowRealtimeOperationListAbstractListComponent *op = (ComGoodowRealtimeOperationListAbstractListComponent *) check_class_cast(other, [ComGoodowRealtimeOperationListAbstractListComponent class]);
  int endIndex0 = startIndex_ + length_;
  int endIndex1 = ((ComGoodowRealtimeOperationListAbstractListComponent *) nil_chk(op))->startIndex_ + op->length_;
  switch (op->type_) {
    case ComGoodowRealtimeOperationListAbstractInsertComponent_TYPE:
    if (op->startIndex_ <= startIndex_) {
      return values_ == nil ? [self createWithInt:startIndex_ + op->length_ withInt:length_] : [self createWithInt:startIndex_ + op->length_ withId:values_];
    }
    else if (op->startIndex_ < endIndex0) {
      return [super transformWithComGoodowRealtimeOperationOperation:other withBoolean:applied];
    }
    else {
      return self;
    }
    case ComGoodowRealtimeOperationListAbstractDeleteComponent_TYPE:
    if (endIndex1 <= startIndex_) {
      return values_ == nil ? [self createWithInt:startIndex_ - op->length_ withInt:length_] : [self createWithInt:startIndex_ - op->length_ withId:values_];
    }
    else if (op->startIndex_ >= endIndex0) {
      return self;
    }
    else if (op->startIndex_ <= startIndex_) {
      int len = endIndex0 - endIndex1;
      return endIndex1 < endIndex0 ? values_ == nil ? [self createWithInt:op->startIndex_ withInt:len] : [self createWithInt:op->startIndex_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:endIndex1 - startIndex_ withInt:len]] : nil;
    }
    else {
      if (endIndex1 < endIndex0) {
        return values_ == nil ? [self createWithInt:startIndex_ withInt:length_ - op->length_] : [self createWithInt:startIndex_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) replaceWithWithId:values_ withInt:op->startIndex_ - startIndex_ withInt:op->length_ withId:nil]];
      }
      else {
        return values_ == nil ? [self createWithInt:startIndex_ withInt:op->startIndex_ - startIndex_] : [self createWithInt:startIndex_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:0 withInt:op->startIndex_ - startIndex_]];
      }
    }
    case ComGoodowRealtimeOperationListAbstractReplaceComponent_TYPE:
    if (values_ == nil || endIndex1 <= startIndex_ || op->startIndex_ >= endIndex0) {
      return self;
    }
    else if (op->startIndex_ <= startIndex_) {
      if (endIndex1 < endIndex0) {
        return [self createWithInt:startIndex_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:op->values_ withInt:startIndex_ - op->startIndex_ withInt:endIndex1 - startIndex_ withId:values_ withInt:endIndex1 - startIndex_ withInt:endIndex0 - endIndex1]];
      }
      else {
        return [self createWithInt:startIndex_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:op->values_ withInt:startIndex_ - op->startIndex_ withInt:length_]];
      }
    }
    else {
      if (endIndex1 < endIndex0) {
        return [self createWithInt:startIndex_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) replaceWithWithId:values_ withInt:op->startIndex_ - startIndex_ withInt:op->length_ withId:op->values_]];
      }
      else {
        return [self createWithInt:startIndex_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:0 withInt:op->startIndex_ - startIndex_ withId:op->values_ withInt:0 withInt:endIndex0 - op->startIndex_]];
      }
    }
    default:
    @throw [[JavaLangRuntimeException alloc] initWithNSString:[NSString stringWithFormat:@"Unsupported List Operation type: %d", op->type_]];
  }
}

- (int)transformIndexReferenceWithInt:(int)index
                          withBoolean:(BOOL)rigthSide
                          withBoolean:(BOOL)canBeDeleted {
  if (startIndex_ + length_ <= index) {
    return index - length_;
  }
  else if (startIndex_ <= index) {
    return canBeDeleted ? -1 : startIndex_;
  }
  else {
    return index;
  }
}

- (IOSObjectArray *)transformComponentWithComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)other
                                                                           withBoolean:(BOOL)applied {
  ComGoodowRealtimeOperationListAbstractListComponent *op = (ComGoodowRealtimeOperationListAbstractListComponent *) check_class_cast(other, [ComGoodowRealtimeOperationListAbstractListComponent class]);
  int endIndex0 = startIndex_ + length_;
  NSAssert(((ComGoodowRealtimeOperationListAbstractListComponent *) nil_chk(op))->type_ == ComGoodowRealtimeOperationListAbstractInsertComponent_TYPE && op->startIndex_ > startIndex_ && op->startIndex_ < endIndex0, @"/Users/retechretech/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/AbstractDeleteComponent.java:131 condition failed: assert op.type == AbstractInsertComponent.TYPE && op.startIndex > startIndex\n        && op.startIndex < endIndex0;");
  int len0 = op->startIndex_ - startIndex_;
  int len1 = length_ - len0;
  return [self asArrayWithNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ values_ == nil ? [self createWithInt:startIndex_ withInt:len0] : [self createWithInt:startIndex_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:0 withInt:len0]], values_ == nil ? [self createWithInt:startIndex_ + op->length_ withInt:len1] : [self createWithInt:startIndex_ + op->length_ withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:len0 withInt:len1]] } count:2 type:[IOSClass classWithClass:[NSObject class]]]];
}

- (ComGoodowRealtimeOperationListAbstractDeleteComponent *)createWithInt:(int)startIndex
                                                                 withInt:(int)length {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (ComGoodowRealtimeOperationListAbstractDeleteComponent *)createWithInt:(int)startIndex
                                                                  withId:(id)values {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withInt:", "AbstractDeleteComponent", NULL, 0x4, NULL },
    { "initWithNSString:withInt:withId:", "AbstractDeleteComponent", NULL, 0x4, NULL },
    { "applyWithComGoodowRealtimeOperationListListTarget:", "apply", "V", 0x1, NULL },
    { "transformWithComGoodowRealtimeOperationOperation:withBoolean:", "transform", "Lcom.goodow.realtime.operation.Operation;", 0x1, NULL },
    { "transformIndexReferenceWithInt:withBoolean:withBoolean:", "transformIndexReference", "I", 0x1, NULL },
    { "transformComponentWithComGoodowRealtimeOperationOperationComponent:withBoolean:", "transformComponent", "[Lcom.goodow.realtime.operation.list.AbstractDeleteComponent;", 0x1, NULL },
    { "createWithInt:withInt:", "create", "Lcom.goodow.realtime.operation.list.AbstractDeleteComponent;", 0x404, NULL },
    { "createWithInt:withId:", "create", "Lcom.goodow.realtime.operation.list.AbstractDeleteComponent;", 0x404, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "TYPE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComGoodowRealtimeOperationListAbstractDeleteComponent_TYPE },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static J2ObjcClassInfo _ComGoodowRealtimeOperationListAbstractDeleteComponent = { "AbstractDeleteComponent", "com.goodow.realtime.operation.list", NULL, 0x401, 8, methods, 1, fields, 1, superclass_type_args};
  return &_ComGoodowRealtimeOperationListAbstractDeleteComponent;
}

@end