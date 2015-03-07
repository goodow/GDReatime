//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/larry/dev/workspace/realtime/realtime-operation/src/main/java/com/goodow/realtime/operation/impl/CollaborativeTransformer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/json/JsonObject.h"
#include "com/goodow/realtime/operation/Operation.h"
#include "com/goodow/realtime/operation/OperationComponent.h"
#include "com/goodow/realtime/operation/create/CreateComponent.h"
#include "com/goodow/realtime/operation/cursor/ReferenceShiftedComponent.h"
#include "com/goodow/realtime/operation/impl/AbstractComponent.h"
#include "com/goodow/realtime/operation/impl/CollaborativeOperation.h"
#include "com/goodow/realtime/operation/impl/CollaborativeTransformer.h"
#include "com/goodow/realtime/operation/list/AbstractDeleteComponent.h"
#include "com/goodow/realtime/operation/list/AbstractInsertComponent.h"
#include "com/goodow/realtime/operation/list/AbstractListComponent.h"
#include "com/goodow/realtime/operation/list/AbstractReplaceComponent.h"
#include "com/goodow/realtime/operation/list/SimpleDeleteComponent.h"
#include "com/goodow/realtime/operation/list/json/JsonHelper.h"
#include "com/goodow/realtime/operation/list/json/JsonInsertComponent.h"
#include "com/goodow/realtime/operation/list/json/JsonReplaceComponent.h"
#include "com/goodow/realtime/operation/list/string/StringHelper.h"
#include "com/goodow/realtime/operation/list/string/StringInsertComponent.h"
#include "com/goodow/realtime/operation/map/AbstractMapComponent.h"
#include "com/goodow/realtime/operation/map/json/JsonMapComponent.h"
#include "com/goodow/realtime/operation/util/Pair.h"
#include "java/lang/UnsupportedOperationException.h"

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 () {
 @public
  id<ComGoodowRealtimeJsonJsonArray> val$components_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1, val$components_, id<ComGoodowRealtimeJsonJsonArray>)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1 () {
 @public
  ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1, this$0_, ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 *)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$2 () {
 @public
  ComGoodowRealtimeOperationImplCollaborativeTransformer *this$0_;
  id<ComGoodowRealtimeJsonJsonArray> val$components_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$2, this$0_, ComGoodowRealtimeOperationImplCollaborativeTransformer *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$2, val$components_, id<ComGoodowRealtimeJsonJsonArray>)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$3 () {
 @public
  id<ComGoodowRealtimeJsonJsonArray> val$transformedApplied_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$3, val$transformedApplied_, id<ComGoodowRealtimeJsonJsonArray>)

@interface ComGoodowRealtimeOperationImplCollaborativeTransformer_$4 () {
 @public
  ComGoodowRealtimeOperationImplCollaborativeTransformer *this$0_;
  id<ComGoodowRealtimeJsonJsonArray> val$transformed_;
  id<ComGoodowRealtimeJsonJsonArray> val$transformedApplied_;
}
@end

J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$4, this$0_, ComGoodowRealtimeOperationImplCollaborativeTransformer *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$4, val$transformed_, id<ComGoodowRealtimeJsonJsonArray>)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeOperationImplCollaborativeTransformer_$4, val$transformedApplied_, id<ComGoodowRealtimeJsonJsonArray>)

@implementation ComGoodowRealtimeOperationImplCollaborativeTransformer

- (ComGoodowRealtimeOperationImplCollaborativeOperation *)composeWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)operations {
  NSAssert([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(operations)) length] > 0 && [operations indexOfWithId:nil] == -1, @"com/goodow/realtime/operation/impl/CollaborativeTransformer.java:43 condition failed: assert operations.length() > 0 && operations.indexOf(null) == -1;");
  ComGoodowRealtimeOperationImplCollaborativeOperation *first = [operations getWithInt:0];
  if ([operations length] == 1) {
    return first;
  }
  id<ComGoodowRealtimeJsonJsonArray> components = ComGoodowRealtimeJsonJson_createArray();
  [operations forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 alloc] initWithComGoodowRealtimeJsonJsonArray:components]];
  return [[ComGoodowRealtimeOperationImplCollaborativeOperation alloc] initWithNSString:((ComGoodowRealtimeOperationImplCollaborativeOperation *) nil_chk(first))->userId_ withNSString:first->sessionId_ withComGoodowRealtimeJsonJsonArray:components];
}

- (ComGoodowRealtimeOperationImplAbstractComponent *)createComponentWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)serialized {
  ComGoodowRealtimeOperationImplAbstractComponent *component = nil;
  switch (J2ObjCFpToInt([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serialized)) getNumberWithInt:0])) {
    case ComGoodowRealtimeOperationCreateCreateComponent_TYPE:
    component = ComGoodowRealtimeOperationCreateCreateComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
    break;
    case ComGoodowRealtimeOperationMapAbstractMapComponent_TYPE:
    component = ComGoodowRealtimeOperationMapJsonJsonMapComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
    break;
    case ComGoodowRealtimeOperationListAbstractInsertComponent_TYPE:
    switch (J2ObjCFpToInt([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([serialized getArrayWithInt:3])) getNumberWithInt:0])) {
      case ComGoodowRealtimeOperationListJsonJsonHelper_TYPE:
      component = ComGoodowRealtimeOperationListJsonJsonInsertComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
      break;
      case ComGoodowRealtimeOperationListStringStringHelper_TYPE:
      component = ComGoodowRealtimeOperationListStringStringInsertComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
      break;
      default:
      @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:JreStrcat("$$", @"Unknow insert operation sub-type: ", [serialized toJsonString])];
    }
    break;
    case ComGoodowRealtimeOperationListAbstractDeleteComponent_TYPE:
    component = ComGoodowRealtimeOperationListSimpleDeleteComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
    break;
    case ComGoodowRealtimeOperationListAbstractReplaceComponent_TYPE:
    component = ComGoodowRealtimeOperationListJsonJsonReplaceComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
    break;
    case ComGoodowRealtimeOperationCursorReferenceShiftedComponent_TYPE:
    component = ComGoodowRealtimeOperationCursorReferenceShiftedComponent_parseWithComGoodowRealtimeJsonJsonArray_(serialized);
    break;
    default:
    @throw [[JavaLangUnsupportedOperationException alloc] initWithNSString:JreStrcat("$$", @"Unknow operation type: ", [serialized toJsonString])];
  }
  return component;
}

- (ComGoodowRealtimeOperationImplCollaborativeOperation *)createOperationWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)opData {
  NSAssert([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([((id<ComGoodowRealtimeJsonJsonObject>) nil_chk(opData)) getArrayWithNSString:ComGoodowRealtimeOperationImplCollaborativeOperation_get_OP_()])) length] > 0, @"com/goodow/realtime/operation/impl/CollaborativeTransformer.java:104 condition failed: assert opData.getArray(CollaborativeOperation.OP).length() > 0;");
  id<ComGoodowRealtimeJsonJsonArray> components = ComGoodowRealtimeJsonJson_createArray();
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([opData getArrayWithNSString:ComGoodowRealtimeOperationImplCollaborativeOperation_get_OP_()])) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeOperationImplCollaborativeTransformer_$2 alloc] initWithComGoodowRealtimeOperationImplCollaborativeTransformer:self withComGoodowRealtimeJsonJsonArray:components]];
  return [[ComGoodowRealtimeOperationImplCollaborativeOperation alloc] initWithNSString:[opData getStringWithNSString:ComGoodowRealtimeOperationImplCollaborativeOperation_get_UID_()] withNSString:[opData getStringWithNSString:ComGoodowRealtimeOperationImplCollaborativeOperation_get_SID_()] withComGoodowRealtimeJsonJsonArray:components];
}

- (ComGoodowRealtimeOperationUtilPair *)transformWithComGoodowRealtimeOperationOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation
                                                 withComGoodowRealtimeOperationOperation:(ComGoodowRealtimeOperationImplCollaborativeOperation *)appliedOperation {
  ComGoodowRealtimeOperationUtilPair *pair = [self transformWithComGoodowRealtimeJsonJsonArray:((ComGoodowRealtimeOperationImplCollaborativeOperation *) nil_chk(operation))->components_ withComGoodowRealtimeJsonJsonArray:((ComGoodowRealtimeOperationImplCollaborativeOperation *) nil_chk(appliedOperation))->components_];
  ComGoodowRealtimeOperationImplCollaborativeOperation *transformed = [[ComGoodowRealtimeOperationImplCollaborativeOperation alloc] initWithNSString:operation->userId_ withNSString:operation->sessionId_ withComGoodowRealtimeJsonJsonArray:((ComGoodowRealtimeOperationUtilPair *) nil_chk(pair))->first_];
  ComGoodowRealtimeOperationImplCollaborativeOperation *transformedApplied = [[ComGoodowRealtimeOperationImplCollaborativeOperation alloc] initWithNSString:appliedOperation->userId_ withNSString:appliedOperation->sessionId_ withComGoodowRealtimeJsonJsonArray:pair->second_];
  return ComGoodowRealtimeOperationUtilPair_ofWithId_withId_(transformed, transformedApplied);
}

- (ComGoodowRealtimeOperationUtilPair *)transformWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)operations
                                                 withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)appliedOperations {
  NSAssert([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(operations)) indexOfWithId:nil] == -1 && [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(appliedOperations)) indexOfWithId:nil] == -1, @"com/goodow/realtime/operation/impl/CollaborativeTransformer.java:128 condition failed: assert operations.indexOf(null) == -1 && appliedOperations.indexOf(null) == -1;");
  id<ComGoodowRealtimeJsonJsonArray> transformed = ComGoodowRealtimeJsonJson_createArray();
  id<ComGoodowRealtimeJsonJsonArray> transformedApplied = ComGoodowRealtimeJsonJson_createArray();
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(appliedOperations)) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeOperationImplCollaborativeTransformer_$3 alloc] initWithComGoodowRealtimeJsonJsonArray:transformedApplied]];
  [operations forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeOperationImplCollaborativeTransformer_$4 alloc] initWithComGoodowRealtimeOperationImplCollaborativeTransformer:self withComGoodowRealtimeJsonJsonArray:transformed withComGoodowRealtimeJsonJsonArray:transformedApplied]];
  return ComGoodowRealtimeOperationUtilPair_ofWithId_withId_(transformed, transformedApplied);
}

- (void)transformWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)transformedResults
            withComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)operation
                 withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)others
                                            withInt:(jint)startIndex
                                        withBoolean:(jboolean)applied {
  NSAssert(operation != nil, @"com/goodow/realtime/operation/impl/CollaborativeTransformer.java:149 condition failed: assert operation != null;");
  if (startIndex == [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(others)) length]) {
    (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(transformedResults)) pushWithId:operation];
    return;
  }
  id<ComGoodowRealtimeOperationOperation> other = [others getWithInt:startIndex];
  NSAssert(other != nil, @"com/goodow/realtime/operation/impl/CollaborativeTransformer.java:155 condition failed: assert other != null;");
  if ([operation isKindOfClass:[ComGoodowRealtimeOperationImplAbstractComponent class]] && ![((ComGoodowRealtimeOperationImplAbstractComponent *) nil_chk(((ComGoodowRealtimeOperationImplAbstractComponent *) check_class_cast(operation, [ComGoodowRealtimeOperationImplAbstractComponent class])))) isSameIdWithComGoodowRealtimeOperationOperation:other]) {
    if ([operation isKindOfClass:[ComGoodowRealtimeOperationCursorReferenceShiftedComponent class]] && [other isKindOfClass:[ComGoodowRealtimeOperationListAbstractListComponent class]] && [((NSString *) nil_chk(((ComGoodowRealtimeOperationCursorReferenceShiftedComponent *) nil_chk(((ComGoodowRealtimeOperationCursorReferenceShiftedComponent *) check_class_cast(operation, [ComGoodowRealtimeOperationCursorReferenceShiftedComponent class]))))->referencedObjectId_)) isEqual:((ComGoodowRealtimeOperationListAbstractListComponent *) nil_chk(((ComGoodowRealtimeOperationListAbstractListComponent *) check_class_cast(other, [ComGoodowRealtimeOperationListAbstractListComponent class]))))->id__]) {
      operation = [((id<ComGoodowRealtimeOperationOperation>) nil_chk(operation)) transformWithComGoodowRealtimeOperationOperation:other withBoolean:applied];
    }
    [self transformWithComGoodowRealtimeJsonJsonArray:transformedResults withComGoodowRealtimeOperationOperation:operation withComGoodowRealtimeJsonJsonArray:others withInt:++startIndex withBoolean:applied];
    return;
  }
  @try {
    id<ComGoodowRealtimeOperationOperation> transformed = [((id<ComGoodowRealtimeOperationOperation>) nil_chk(other)) transformWithComGoodowRealtimeOperationOperation:operation withBoolean:!applied];
    (void) [others removeWithInt:startIndex];
    if (transformed != nil) {
      (void) [others insertWithInt:startIndex++ withId:transformed];
    }
  }
  @catch (JavaLangUnsupportedOperationException *e) {
    if (!([other isKindOfClass:[ComGoodowRealtimeOperationOperationComponent class]])) {
      @throw e;
    }
    IOSObjectArray *transformed = [((ComGoodowRealtimeOperationOperationComponent *) nil_chk(((ComGoodowRealtimeOperationOperationComponent *) check_class_cast(other, [ComGoodowRealtimeOperationOperationComponent class])))) transformComponentWithComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *) check_class_cast(operation, [ComGoodowRealtimeOperationOperationComponent class]) withBoolean:!applied];
    (void) [others removeWithInt:startIndex];
    if (transformed != nil) {
      {
        IOSObjectArray *a__ = transformed;
        ComGoodowRealtimeOperationOperationComponent * const *b__ = a__->buffer_;
        ComGoodowRealtimeOperationOperationComponent * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          ComGoodowRealtimeOperationOperationComponent *component = *b__++;
          (void) [others insertWithInt:startIndex++ withId:component];
        }
      }
    }
  }
  @try {
    id<ComGoodowRealtimeOperationOperation> transformed = [((id<ComGoodowRealtimeOperationOperation>) nil_chk(operation)) transformWithComGoodowRealtimeOperationOperation:other withBoolean:applied];
    if (transformed == nil) {
      return;
    }
    else {
      [self transformWithComGoodowRealtimeJsonJsonArray:transformedResults withComGoodowRealtimeOperationOperation:transformed withComGoodowRealtimeJsonJsonArray:others withInt:startIndex withBoolean:applied];
    }
  }
  @catch (JavaLangUnsupportedOperationException *e) {
    if (!([operation isKindOfClass:[ComGoodowRealtimeOperationOperationComponent class]])) {
      @throw e;
    }
    IOSObjectArray *transformed = [((ComGoodowRealtimeOperationOperationComponent *) nil_chk(((ComGoodowRealtimeOperationOperationComponent *) check_class_cast(operation, [ComGoodowRealtimeOperationOperationComponent class])))) transformComponentWithComGoodowRealtimeOperationOperationComponent:(ComGoodowRealtimeOperationOperationComponent *) check_class_cast(other, [ComGoodowRealtimeOperationOperationComponent class]) withBoolean:applied];
    if (transformed == nil) {
      return;
    }
    else {
      {
        IOSObjectArray *a__ = transformed;
        ComGoodowRealtimeOperationOperationComponent * const *b__ = a__->buffer_;
        ComGoodowRealtimeOperationOperationComponent * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          ComGoodowRealtimeOperationOperationComponent *component = *b__++;
          [self transformWithComGoodowRealtimeJsonJsonArray:transformedResults withComGoodowRealtimeOperationOperation:component withComGoodowRealtimeJsonJsonArray:others withInt:startIndex withBoolean:applied];
        }
      }
    }
  }
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "composeWithComGoodowRealtimeJsonJsonArray:", "compose", "Lcom.goodow.realtime.operation.impl.CollaborativeOperation;", 0x1, NULL },
    { "createComponentWithComGoodowRealtimeJsonJsonArray:", "createComponent", "Lcom.goodow.realtime.operation.impl.AbstractComponent;", 0x1, NULL },
    { "createOperationWithComGoodowRealtimeJsonJsonObject:", "createOperation", "Lcom.goodow.realtime.operation.impl.CollaborativeOperation;", 0x1, NULL },
    { "transformWithComGoodowRealtimeOperationImplCollaborativeOperation:withComGoodowRealtimeOperationImplCollaborativeOperation:", "transform", "Lcom.goodow.realtime.operation.util.Pair;", 0x1, NULL },
    { "transformWithComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeJsonJsonArray:", "transform", "Lcom.goodow.realtime.operation.util.Pair;", 0x4, NULL },
    { "transformWithComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeOperationOperation:withComGoodowRealtimeJsonJsonArray:withInt:withBoolean:", "transform", "V", 0x4, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationImplCollaborativeTransformer = { 1, "CollaborativeTransformer", "com.goodow.realtime.operation.impl", NULL, 0x1, 7, methods, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeOperationImplCollaborativeTransformer;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationImplCollaborativeTransformer)

@implementation ComGoodowRealtimeOperationImplCollaborativeTransformer_$1

- (void)callWithInt:(jint)index
             withId:(ComGoodowRealtimeOperationImplCollaborativeOperation *)operation {
  [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(((ComGoodowRealtimeOperationImplCollaborativeOperation *) nil_chk(operation))->components_)) forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1 alloc] initWithComGoodowRealtimeOperationImplCollaborativeTransformer_$1:self]];
}

- (instancetype)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  val$components_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$components_ = val$components_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeOperationImplCollaborativeOperation:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$components_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 = { 1, "$1", "com.goodow.realtime.operation.impl", "CollaborativeTransformer", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationImplCollaborativeTransformer_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1)

@implementation ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1

- (void)callWithInt:(jint)index
             withId:(ComGoodowRealtimeOperationOperationComponent *)component {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(this$0_->val$components_)) pushWithId:component];
}

- (instancetype)initWithComGoodowRealtimeOperationImplCollaborativeTransformer_$1:(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1 *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeOperationOperationComponent:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeOperationImplCollaborativeTransformer_$1:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.operation.impl.CollaborativeTransformer$1;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1 = { 1, "$1", "com.goodow.realtime.operation.impl", "CollaborativeTransformer$$1", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationImplCollaborativeTransformer_$1_$1)

@implementation ComGoodowRealtimeOperationImplCollaborativeTransformer_$2

- (void)callWithInt:(jint)index
             withId:(id<ComGoodowRealtimeJsonJsonArray>)component {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$components_)) pushWithId:[this$0_ createComponentWithComGoodowRealtimeJsonJsonArray:component]];
}

- (instancetype)initWithComGoodowRealtimeOperationImplCollaborativeTransformer:(ComGoodowRealtimeOperationImplCollaborativeTransformer *)outer$
                                            withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  this$0_ = outer$;
  val$components_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationImplCollaborativeTransformer_$2 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$components_ = val$components_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeJsonJsonArray:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeOperationImplCollaborativeTransformer:withComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.operation.impl.CollaborativeTransformer;", NULL,  },
    { "val$components_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationImplCollaborativeTransformer_$2 = { 1, "$2", "com.goodow.realtime.operation.impl", "CollaborativeTransformer", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationImplCollaborativeTransformer_$2;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationImplCollaborativeTransformer_$2)

@implementation ComGoodowRealtimeOperationImplCollaborativeTransformer_$3

- (void)callWithInt:(jint)index
             withId:(id<ComGoodowRealtimeOperationOperation>)operation {
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$transformedApplied_)) pushWithId:operation];
}

- (instancetype)initWithComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  val$transformedApplied_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationImplCollaborativeTransformer_$3 *)other {
  [super copyAllFieldsTo:other];
  other->val$transformedApplied_ = val$transformedApplied_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeOperationOperation:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$transformedApplied_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationImplCollaborativeTransformer_$3 = { 1, "$3", "com.goodow.realtime.operation.impl", "CollaborativeTransformer", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationImplCollaborativeTransformer_$3;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationImplCollaborativeTransformer_$3)

@implementation ComGoodowRealtimeOperationImplCollaborativeTransformer_$4

- (void)callWithInt:(jint)index
             withId:(id<ComGoodowRealtimeOperationOperation>)operation {
  [this$0_ transformWithComGoodowRealtimeJsonJsonArray:val$transformed_ withComGoodowRealtimeOperationOperation:operation withComGoodowRealtimeJsonJsonArray:val$transformedApplied_ withInt:0 withBoolean:NO];
}

- (instancetype)initWithComGoodowRealtimeOperationImplCollaborativeTransformer:(ComGoodowRealtimeOperationImplCollaborativeTransformer *)outer$
                                            withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0
                                            withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$1 {
  this$0_ = outer$;
  val$transformed_ = capture$0;
  val$transformedApplied_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeOperationImplCollaborativeTransformer_$4 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$transformed_ = val$transformed_;
  other->val$transformedApplied_ = val$transformedApplied_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "callWithInt:withComGoodowRealtimeOperationOperation:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeOperationImplCollaborativeTransformer:withComGoodowRealtimeJsonJsonArray:withComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.operation.impl.CollaborativeTransformer;", NULL,  },
    { "val$transformed_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "val$transformedApplied_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static const J2ObjcClassInfo _ComGoodowRealtimeOperationImplCollaborativeTransformer_$4 = { 1, "$4", "com.goodow.realtime.operation.impl", "CollaborativeTransformer", 0x8000, 2, methods, 3, fields, 0, NULL};
  return &_ComGoodowRealtimeOperationImplCollaborativeTransformer_$4;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoodowRealtimeOperationImplCollaborativeTransformer_$4)
