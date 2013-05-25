//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/ReferenceShiftedOperation.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/IndexReference.h"
#import "com/goodow/realtime/operation/Operation.h"
#import "com/goodow/realtime/operation/ReferenceShiftedOperation.h"
#import "com/goodow/realtime/operation/TransformException.h"
#import "com/goodow/realtime/operation/basic/NoOp.h"
#import "com/goodow/realtime/util/Pair.h"
#import "elemental/json/JsonArray.h"
#import "java/lang/Boolean.h"
#import "java/lang/IllegalStateException.h"

@implementation ComGoodowRealtimeOperationReferenceShiftedOperation

- (NSString *)id_ {
  return id__;
}
- (void)setId_:(NSString *)id_ {
  JreOperatorRetainedAssign(&id__, id_);
}
@synthesize id_ = id__;
- (NSString *)referencedObject {
  return referencedObject_;
}
- (void)setReferencedObject:(NSString *)referencedObject {
  JreOperatorRetainedAssign(&referencedObject_, referencedObject);
}
@synthesize referencedObject = referencedObject_;
@synthesize newIndex = newIndex_;
@synthesize canBeDeleted = canBeDeleted_;
@synthesize oldIndex = oldIndex_;

+ (int)TYPE {
  return ComGoodowRealtimeOperationReferenceShiftedOperation_TYPE;
}

- (id)initWithEMJsonArray:(id<EMJsonArray>)serialized {
  return [self initComGoodowRealtimeOperationReferenceShiftedOperationWithNSString:[((id<EMJsonArray>) NIL_CHK(serialized)) getStringWithInt:0] withInt:(int) [((id<EMJsonArray>) NIL_CHK(serialized)) getNumberWithInt:1] withBOOL:[((id<EMJsonArray>) NIL_CHK(serialized)) getBooleanWithInt:2] withInt:(int) [((id<EMJsonArray>) NIL_CHK(serialized)) getNumberWithInt:3]];
}

- (id)initComGoodowRealtimeOperationReferenceShiftedOperationWithNSString:(NSString *)referencedObject
                                                                  withInt:(int)newIndex
                                                                 withBOOL:(BOOL)canBeDeleted
                                                                  withInt:(int)oldIndex {
  if ((self = [super init])) {
    self.referencedObject = referencedObject;
    self.newIndex = newIndex;
    self.canBeDeleted = canBeDeleted;
    self.oldIndex = oldIndex;
  }
  return self;
}

- (id)initWithNSString:(NSString *)referencedObject
               withInt:(int)newIndex
              withBOOL:(BOOL)canBeDeleted
               withInt:(int)oldIndex {
  return [self initComGoodowRealtimeOperationReferenceShiftedOperationWithNSString:referencedObject withInt:newIndex withBOOL:canBeDeleted withInt:oldIndex];
}

- (void)applyWithId:(GDRIndexReference *)target {
  @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
}

- (ComGoodowRealtimeOperationReferenceShiftedOperation *)composeWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)op {
  NSAssert([(id) op isKindOfClass:[ComGoodowRealtimeOperationReferenceShiftedOperation class]], @"src/main/java/com/goodow/realtime/operation/ReferenceShiftedOperation.java:50 condition failed: assert op instanceof ReferenceShiftedOperation;");
  ComGoodowRealtimeOperationReferenceShiftedOperation *o = (ComGoodowRealtimeOperationReferenceShiftedOperation *) op;
  NSAssert([NIL_CHK(referencedObject_) isEqual:((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(o)).referencedObject], @"src/main/java/com/goodow/realtime/operation/ReferenceShiftedOperation.java:52 condition failed: assert referencedObject.equals(o.referencedObject);");
  return [[[ComGoodowRealtimeOperationReferenceShiftedOperation alloc] initWithNSString:referencedObject_ withInt:((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(o)).newIndex withBOOL:canBeDeleted_ withInt:oldIndex_] autorelease];
}

- (BOOL)isEqual:(id)obj {
  if (self == obj) {
    return YES;
  }
  if (obj == nil) {
    return NO;
  }
  if (!([obj isKindOfClass:[ComGoodowRealtimeOperationReferenceShiftedOperation class]])) {
    return NO;
  }
  ComGoodowRealtimeOperationReferenceShiftedOperation *other = (ComGoodowRealtimeOperationReferenceShiftedOperation *) obj;
  if (canBeDeleted_ != ((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(other)).canBeDeleted) {
    return NO;
  }
  if (id__ == nil) {
    if (((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(other)).id_ != nil) {
      return NO;
    }
  }
  else if (![id__ isEqual:((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(other)).id_]) {
    return NO;
  }
  if (newIndex_ != ((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(other)).newIndex) {
    return NO;
  }
  if (oldIndex_ != ((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(other)).oldIndex) {
    return NO;
  }
  if (referencedObject_ == nil) {
    if (((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(other)).referencedObject != nil) {
      return NO;
    }
  }
  else if (![referencedObject_ isEqual:((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(other)).referencedObject]) {
    return NO;
  }
  return YES;
}

- (NSString *)getId {
  return id__;
}

- (int)getType {
  return ComGoodowRealtimeOperationReferenceShiftedOperation_TYPE;
}

- (NSUInteger)hash {
  int prime = 31;
  int result = 1;
  result = prime * result + (canBeDeleted_ ? 1231 : 1237);
  result = prime * result + ((id__ == nil) ? 0 : [NIL_CHK(id__) hash]);
  result = prime * result + newIndex_;
  result = prime * result + oldIndex_;
  result = prime * result + ((referencedObject_ == nil) ? 0 : [NIL_CHK(referencedObject_) hash]);
  return result;
}

- (id<ComGoodowRealtimeOperationOperation>)invert {
  return [[[ComGoodowRealtimeOperationReferenceShiftedOperation alloc] initWithNSString:referencedObject_ withInt:oldIndex_ withBOOL:canBeDeleted_ withInt:newIndex_] autorelease];
}

- (BOOL)isNoOp {
  return newIndex_ == oldIndex_;
}

- (void)setIdWithNSString:(NSString *)id_ {
  self.id_ = id_;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"[\"%@\",%d,%@,%d]", referencedObject_, newIndex_, [JavaLangBoolean toStringWithBOOL:canBeDeleted_], oldIndex_];
}

- (ComGoodowRealtimeUtilPair *)transformWithWithComGoodowRealtimeOperationOperation:(id<ComGoodowRealtimeOperationOperation>)clientOp {
  NSAssert([(id) clientOp isKindOfClass:[ComGoodowRealtimeOperationReferenceShiftedOperation class]], @"src/main/java/com/goodow/realtime/operation/ReferenceShiftedOperation.java:139 condition failed: assert clientOp instanceof ReferenceShiftedOperation;");
  ComGoodowRealtimeOperationReferenceShiftedOperation *op = (ComGoodowRealtimeOperationReferenceShiftedOperation *) clientOp;
  NSAssert([NIL_CHK(referencedObject_) isEqual:((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(op)).referencedObject], @"src/main/java/com/goodow/realtime/operation/ReferenceShiftedOperation.java:141 condition failed: assert referencedObject.equals(op.referencedObject);");
  if (((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(op)).oldIndex != oldIndex_) {
    @throw [[[ComGoodowRealtimeOperationTransformException alloc] initWithNSString:[NSString stringWithFormat:@"Mismatched initial value: attempt to transform %@ with %@", [self description], [((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(op)) description]]] autorelease];
  }
  return ((ComGoodowRealtimeUtilPair *) [ComGoodowRealtimeUtilPair ofWithId:((ComGoodowRealtimeOperationBasicNoOp *) [ComGoodowRealtimeOperationBasicNoOp get]) withId:[[[ComGoodowRealtimeOperationReferenceShiftedOperation alloc] initWithNSString:referencedObject_ withInt:((ComGoodowRealtimeOperationReferenceShiftedOperation *) NIL_CHK(op)).newIndex withBOOL:canBeDeleted_ withInt:newIndex_] autorelease]]);
}

- (void)dealloc {
  JreOperatorRetainedAssign(&referencedObject_, nil);
  JreOperatorRetainedAssign(&id__, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationReferenceShiftedOperation *typedCopy = (ComGoodowRealtimeOperationReferenceShiftedOperation *) copy;
  typedCopy.id_ = id__;
  typedCopy.referencedObject = referencedObject_;
  typedCopy.newIndex = newIndex_;
  typedCopy.canBeDeleted = canBeDeleted_;
  typedCopy.oldIndex = oldIndex_;
}

@end