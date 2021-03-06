//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/list/AbstractReplaceComponent.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
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

__attribute__((unused)) static jboolean ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(ComGoodowRealtimeOperationListAbstractReplaceComponent *self);

@interface ComGoodowRealtimeOperationListAbstractReplaceComponent ()

- (jboolean)canUndo;
@end

@implementation ComGoodowRealtimeOperationListAbstractReplaceComponent

- (instancetype)initWithNSString:(NSString *)id_
                         withInt:(jint)startIndex
                          withId:(id)oldValues
                          withId:(id)newValues {
  if (self = [super initWithInt:ComGoodowRealtimeOperationListAbstractReplaceComponent_TYPE withNSString:id_ withInt:startIndex withId:newValues withInt:-1]) {
    self->oldValues_ = oldValues;
    NSAssert(oldValues == nil || [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) lengthWithId:oldValues] == length_, @"com/goodow/realtime/operation/list/AbstractReplaceComponent.java:27 condition failed: assert oldValues == null || getHelper().length(oldValues) == length;");
  }
  return self;
}

- (void)applyWithId:(id<ComGoodowRealtimeOperationListListTarget>)target {
  [((id<ComGoodowRealtimeOperationListListTarget>) nil_chk(target)) replaceWithInt:startIndex_ withId:values_];
}

- (id<ComGoodowRealtimeOperationOperation>)transformWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)other
                                                                                withBoolean:(jboolean)applied {
  NSAssert([other isKindOfClass:[ComGoodowRealtimeOperationListAbstractListComponent class]] && [self isSameIdWithComGoodowRealtimeOperationOperation:other], @"com/goodow/realtime/operation/list/AbstractReplaceComponent.java:37 condition failed: assert other instanceof AbstractListComponent && isSameId(other);");
  ComGoodowRealtimeOperationListAbstractListComponent *op = (ComGoodowRealtimeOperationListAbstractListComponent *) check_class_cast(other, [ComGoodowRealtimeOperationListAbstractListComponent class]);
  jint endIndex0 = startIndex_ + length_;
  jint endIndex1 = ((ComGoodowRealtimeOperationListAbstractListComponent *) nil_chk(op))->startIndex_ + op->length_;
  switch (op->type_) {
    case ComGoodowRealtimeOperationListAbstractInsertComponent_TYPE:
    if (op->startIndex_ <= startIndex_) {
      return [self createWithInt:startIndex_ + op->length_ withId:oldValues_ withId:values_];
    }
    else if (op->startIndex_ < endIndex0) {
      return [super transformWithComGoodowRealtimeOperationOperation:other withBoolean:applied];
    }
    else {
      return self;
    }
    case ComGoodowRealtimeOperationListAbstractDeleteComponent_TYPE:
    if (op->startIndex_ >= endIndex0) {
      return self;
    }
    else if (endIndex1 <= startIndex_) {
      return [self createWithInt:startIndex_ - op->length_ withId:oldValues_ withId:values_];
    }
    else if (op->startIndex_ <= startIndex_) {
      return endIndex1 < endIndex0 ? [self createWithInt:op->startIndex_ withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:endIndex1 - startIndex_ withInt:endIndex0 - endIndex1] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:endIndex1 - startIndex_ withInt:endIndex0 - endIndex1]] : nil;
    }
    else {
      return endIndex1 < endIndex0 ? [self createWithInt:startIndex_ withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) replaceWithWithId:oldValues_ withInt:op->startIndex_ - startIndex_ withInt:op->length_ withId:nil] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) replaceWithWithId:values_ withInt:op->startIndex_ - startIndex_ withInt:op->length_ withId:nil]] : [self createWithInt:startIndex_ withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:0 withInt:op->startIndex_ - startIndex_] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:0 withInt:op->startIndex_ - startIndex_]];
    }
    case ComGoodowRealtimeOperationListAbstractReplaceComponent_TYPE:
    if (endIndex1 <= startIndex_ || op->startIndex_ >= endIndex0 || (!applied && !ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self))) {
      return self;
    }
    else if (op->startIndex_ <= startIndex_) {
      if (!applied) {
        id transformedOldValues = endIndex1 < endIndex0 ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:op->values_ withInt:startIndex_ - op->startIndex_ withInt:endIndex1 - startIndex_ withId:oldValues_ withInt:endIndex1 - startIndex_ withInt:endIndex0 - endIndex1] : [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:op->values_ withInt:startIndex_ - op->startIndex_ withInt:length_];
        return [self createWithInt:startIndex_ withId:transformedOldValues withId:values_];
      }
      else {
        return endIndex1 < endIndex0 ? [self createWithInt:endIndex1 withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:endIndex1 - startIndex_ withInt:endIndex0 - endIndex1] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:endIndex1 - startIndex_ withInt:endIndex0 - endIndex1]] : nil;
      }
    }
    else {
      if (!applied) {
        id transformedOldValues = endIndex1 < endIndex0 ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) replaceWithWithId:oldValues_ withInt:op->startIndex_ - startIndex_ withInt:op->length_ withId:op->values_] : [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:0 withInt:op->startIndex_ - startIndex_ withId:op->values_ withInt:0 withInt:endIndex0 - op->startIndex_];
        return [self createWithInt:startIndex_ withId:transformedOldValues withId:values_];
      }
      else if (endIndex1 >= endIndex0) {
        return [self createWithInt:startIndex_ withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:0 withInt:op->startIndex_ - startIndex_] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:0 withInt:op->startIndex_ - startIndex_]];
      }
      else {
        return [super transformWithComGoodowRealtimeOperationOperation:other withBoolean:applied];
      }
    }
    default:
    @throw [[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$I", @"Unsupported List Operation type: ", op->type_)];
  }
}

- (IOSObjectArray *)transformComponentWithComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *)other
                                                                           withBoolean:(jboolean)applied {
  ComGoodowRealtimeOperationListAbstractListComponent *op = (ComGoodowRealtimeOperationListAbstractListComponent *) check_class_cast(other, [ComGoodowRealtimeOperationListAbstractListComponent class]);
  jint endIndex0 = startIndex_ + length_;
  jint endIndex1 = ((ComGoodowRealtimeOperationListAbstractListComponent *) nil_chk(op))->startIndex_ + op->length_;
  switch (op->type_) {
    case ComGoodowRealtimeOperationListAbstractInsertComponent_TYPE:
    if (op->startIndex_ > startIndex_ && op->startIndex_ < endIndex0) {
      jint len0 = op->startIndex_ - startIndex_;
      return [self asArrayWithNSObjectArray:[IOSObjectArray newArrayWithObjects:(id[]){ [self createWithInt:startIndex_ withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:0 withInt:len0] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:0 withInt:len0]], [self createWithInt:endIndex1 withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:len0 withInt:length_ - len0] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:len0 withInt:length_ - len0]] } count:2 type:ComGoodowRealtimeOperationListAbstractReplaceComponent_class_()]];
    }
    case ComGoodowRealtimeOperationListAbstractReplaceComponent_TYPE:
    if (applied && op->startIndex_ > startIndex_ && endIndex1 < endIndex0) {
      ComGoodowRealtimeOperationListAbstractReplaceComponent *op1 = [self createWithInt:startIndex_ withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:0 withInt:op->startIndex_ - startIndex_] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:0 withInt:op->startIndex_ - startIndex_]];
      return [self asArrayWithNSObjectArray:[IOSObjectArray newArrayWithObjects:(id[]){ op1, [self createWithInt:endIndex1 withId:ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self) ? [((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:oldValues_ withInt:endIndex1 - startIndex_ withInt:endIndex0 - endIndex1] : nil withId:[((id<ComGoodowRealtimeOperationListListHelper>) nil_chk([self getHelper])) subsetWithId:values_ withInt:endIndex1 - startIndex_ withInt:endIndex0 - endIndex1]] } count:2 type:ComGoodowRealtimeOperationListAbstractReplaceComponent_class_()]];
    }
    default:
    @throw [[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$I", @"Unsupported List Operation type: ", op->type_)];
  }
}

- (jint)transformIndexReferenceWithInt:(jint)index
                           withBoolean:(jboolean)rigthSide
                           withBoolean:(jboolean)canBeDeleted {
  return index;
}

- (ComGoodowRealtimeOperationListAbstractReplaceComponent *)createWithInt:(jint)startIndex
                                                                   withId:(id)oldValues
                                                                   withId:(id)newValues {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)canUndo {
  return ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(self);
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationListAbstractReplaceComponent *)other {
  [super copyAllFieldsTo:other];
  other->oldValues_ = oldValues_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withId:withId:", "AbstractReplaceComponent", NULL, 0x4, NULL },
    { "applyWithComGoodowRealtimeOperationListListTarget:", "apply", "V", 0x1, NULL },
    { "transformWithComGoodowRealtimeOperationOperation:withBoolean:", "transform", "Lcom.goodow.realtime.operation.Operation;", 0x1, NULL },
    { "transformComponentWithComGoodowRealtimeOperationOperationComponent:withBoolean:", "transformComponent", "[Lcom.goodow.realtime.operation.OperationComponent;", 0x1, NULL },
    { "transformIndexReferenceWithInt:withBoolean:withBoolean:", "transformIndexReference", "I", 0x1, NULL },
    { "createWithInt:withId:withId:", "create", "Lcom.goodow.realtime.operation.list.AbstractReplaceComponent;", 0x404, NULL },
    { "canUndo", NULL, "Z", 0x2, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TYPE_", NULL, 0x19, "I", NULL, .constantValue.asInt = ComGoodowRealtimeOperationListAbstractReplaceComponent_TYPE },
    { "oldValues_", NULL, 0x14, "TT;", NULL,  },
  };
  static const char *superclass_type_args[] = {"TT;"};
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationListAbstractReplaceComponent = { 1, "AbstractReplaceComponent", "com.goodow.realtime.operation.list", NULL, 0x401, 7, methods, 2, fields, 1, superclass_type_args};
  return &_ComGoodowRealtimeOperationListAbstractReplaceComponent;
}

@end

jboolean ComGoodowRealtimeOperationListAbstractReplaceComponent_canUndo(ComGoodowRealtimeOperationListAbstractReplaceComponent *self) {
  return self->oldValues_ != nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationListAbstractReplaceComponent)
