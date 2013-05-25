//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/operation/list/algorithm/ListOpCollector.java
//
//  Created by retechretech on 13-5-25.
//

#import "IOSClass.h"
#import "com/goodow/realtime/operation/list/algorithm/ListHelper.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOp.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOpCollector.h"
#import "com/goodow/realtime/operation/list/algorithm/ListOpComposer.h"
#import "elemental/util/ArrayOf.h"
#import "elemental/util/Collections.h"

@implementation ComGoodowRealtimeOperationListAlgorithmListOpCollector

- (id<ElementalUtilArrayOf>)ops {
  return ops_;
}
- (void)setOps:(id<ElementalUtilArrayOf>)ops {
  JreOperatorRetainedAssign(&ops_, ops);
}
@synthesize ops = ops_;
- (id<ComGoodowRealtimeOperationListAlgorithmListHelper>)helper {
  return helper_;
}
- (void)setHelper:(id<ComGoodowRealtimeOperationListAlgorithmListHelper>)helper {
  JreOperatorRetainedAssign(&helper_, helper);
}
@synthesize helper = helper_;

- (id)initWithComGoodowRealtimeOperationListAlgorithmListHelper:(id<ComGoodowRealtimeOperationListAlgorithmListHelper>)helper {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&ops_, ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]));
    self.helper = helper;
  }
  return self;
}

- (ComGoodowRealtimeOperationListAlgorithmListOpCollector *)addWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)op {
  for (int i = 0, len = [((id<ElementalUtilArrayOf>) NIL_CHK(ops_)) length]; i < len; i++) {
    ComGoodowRealtimeOperationListAlgorithmListOp *nextOperation = ((ComGoodowRealtimeOperationListAlgorithmListOp *) [((id<ElementalUtilArrayOf>) NIL_CHK(ops_)) getWithInt:i]);
    if (nextOperation == nil) {
      [((id<ElementalUtilArrayOf>) NIL_CHK(ops_)) setWithInt:i withId:op];
      return self;
    }
    [((id<ElementalUtilArrayOf>) NIL_CHK(ops_)) setWithInt:i withId:nil];
    op = [self composeWithComGoodowRealtimeOperationListAlgorithmListOp:nextOperation withComGoodowRealtimeOperationListAlgorithmListOp:op];
  }
  [((id<ElementalUtilArrayOf>) NIL_CHK(ops_)) pushWithId:op];
  return self;
}

- (ComGoodowRealtimeOperationListAlgorithmListOp *)composeAll {
  ComGoodowRealtimeOperationListAlgorithmListOp *result = nil;
  for (int i = 0, len = [((id<ElementalUtilArrayOf>) NIL_CHK(ops_)) length]; i < len; i++) {
    ComGoodowRealtimeOperationListAlgorithmListOp *op = ((ComGoodowRealtimeOperationListAlgorithmListOp *) [((id<ElementalUtilArrayOf>) NIL_CHK(ops_)) getWithInt:i]);
    if (op != nil) {
      result = (result != nil) ? [self composeWithComGoodowRealtimeOperationListAlgorithmListOp:op withComGoodowRealtimeOperationListAlgorithmListOp:result] : op;
    }
  }
  [((id<ElementalUtilArrayOf>) NIL_CHK(ops_)) setLengthWithInt:0];
  return result;
}

- (ComGoodowRealtimeOperationListAlgorithmListOp *)composeWithComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)op1
                                                          withComGoodowRealtimeOperationListAlgorithmListOp:(ComGoodowRealtimeOperationListAlgorithmListOp *)op2 {
  return ((ComGoodowRealtimeOperationListAlgorithmListOp *) [[[[ComGoodowRealtimeOperationListAlgorithmListOpComposer alloc] initWithComGoodowRealtimeOperationListAlgorithmListHelper:helper_] autorelease] composeWithComGoodowRealtimeOperationListAlgorithmListOp:op1 withComGoodowRealtimeOperationListAlgorithmListOp:op2]);
}

- (void)dealloc {
  JreOperatorRetainedAssign(&helper_, nil);
  JreOperatorRetainedAssign(&ops_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeOperationListAlgorithmListOpCollector *typedCopy = (ComGoodowRealtimeOperationListAlgorithmListOpCollector *) copy;
  typedCopy.ops = ops_;
  typedCopy.helper = helper_;
}

@end