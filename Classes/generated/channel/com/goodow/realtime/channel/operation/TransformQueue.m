//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/channel/operation/TransformQueue.h"
#import "com/goodow/realtime/operation/Operation.h"
#import "com/goodow/realtime/operation/Transformer.h"
#import "com/goodow/realtime/util/Pair.h"
#import "elemental/util/ArrayOf.h"
#import "elemental/util/Collections.h"

@implementation ComGoodowRealtimeChannelOperationTransformQueue

@synthesize transformer = transformer_;
@synthesize expectedAckedClientOps = expectedAckedClientOps_;
@synthesize newClientOpSinceTransform = newClientOpSinceTransform_;
@synthesize serverOps = serverOps_;
@synthesize version_ = version__;
@synthesize queuedClientOps = queuedClientOps_;
@synthesize unackedClientOps_ = unackedClientOps__;

- (id)initWithComGoodowRealtimeOperationTransformer:(id<ComGoodowRealtimeOperationTransformer>)transformer {
  if ((self = [super init])) {
    expectedAckedClientOps_ = 0;
    newClientOpSinceTransform_ = NO;
    serverOps_ = ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]);
    version__ = -1;
    queuedClientOps_ = ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]);
    unackedClientOps__ = ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]);
    self.transformer = transformer;
  }
  return self;
}

- (BOOL)ackClientOpWithInt:(int)resultingRevision {
  [self checkRevisionWithInt:resultingRevision];
  NSAssert(expectedAckedClientOps_ == 0, [[NSString stringWithFormat:@"must call expectedAck J2OBJC_COMMA() there are %d expectedAckedClientOps" J2OBJC_COMMA() expectedAckedClientOps_] description]);
  NSAssert(![((id<ElementalUtilArrayOf>) NIL_CHK(unackedClientOps__)) isEmpty], [[NSString stringWithFormat:@"%@: unackedClientOps is empty; resultingRevision=%d" J2OBJC_COMMA() self J2OBJC_COMMA() resultingRevision] description]);
  self.version_ = resultingRevision;
  [((id<ElementalUtilArrayOf>) NIL_CHK(unackedClientOps__)) shift];
  return [((id<ElementalUtilArrayOf>) NIL_CHK(unackedClientOps__)) isEmpty];
}

- (id<ElementalUtilArrayOf>)ackOpsIfVersionMatchesWithInt:(int)newRevision {
  if (newRevision == version__ + [((id<ElementalUtilArrayOf>) NIL_CHK(unackedClientOps__)) length]) {
    id<ElementalUtilArrayOf> expectedAckingClientOps = unackedClientOps__;
    expectedAckedClientOps_ += [((id<ElementalUtilArrayOf>) NIL_CHK(expectedAckingClientOps)) length];
    unackedClientOps__ = ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]);
    version__ = newRevision;
    return expectedAckingClientOps;
  }
  return nil;
}

- (void)clientOpWithId:(id)clientOp {
  NSAssert(![NIL_CHK(clientOp) isNoOp], @"src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java:73 condition failed: assert !clientOp.isNoOp();");
  if (![((id<ElementalUtilArrayOf>) NIL_CHK(serverOps_)) isEmpty]) {
    id<ElementalUtilArrayOf> cOps = ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]);
    [((id<ElementalUtilArrayOf>) NIL_CHK(cOps)) pushWithId:clientOp];
    ComGoodowRealtimeUtilPair *pair = ((ComGoodowRealtimeUtilPair *) [((id<ComGoodowRealtimeOperationTransformer>) NIL_CHK(transformer_)) transformWithElementalUtilArrayOf:serverOps_ withElementalUtilArrayOf:cOps]);
    serverOps_ = ((ComGoodowRealtimeUtilPair *) NIL_CHK(pair)).first;
    if ([((id<ElementalUtilArrayOf>) NIL_CHK(pair.second)) isEmpty]) {
      return;
    }
    NSAssert([((id<ElementalUtilArrayOf>) NIL_CHK(pair.second)) length] == 1, @"src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java:82 condition failed: assert pair.second.length() == 1;");
    clientOp = [((id<ElementalUtilArrayOf>) NIL_CHK(pair.second)) getWithInt:0];
    NSAssert(![NIL_CHK(clientOp) isNoOp], @"src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java:84 condition failed: assert !clientOp.isNoOp();");
  }
  [((id<ElementalUtilArrayOf>) NIL_CHK(queuedClientOps_)) pushWithId:clientOp];
  newClientOpSinceTransform_ = YES;
}

- (BOOL)expectedAckWithInt:(int)resultingRevision {
  if (expectedAckedClientOps_ == 0) {
    return NO;
  }
  NSAssert(resultingRevision == version__ - expectedAckedClientOps_ + 1, [[NSString stringWithFormat:@"bad rev %d J2OBJC_COMMA() current rev %d J2OBJC_COMMA() expected remaining %d" J2OBJC_COMMA() resultingRevision J2OBJC_COMMA() version__ J2OBJC_COMMA() expectedAckedClientOps_] description]);
  expectedAckedClientOps_--;
  return YES;
}

- (BOOL)hasQueuedClientOps {
  return ![((id<ElementalUtilArrayOf>) NIL_CHK(queuedClientOps_)) isEmpty];
}

- (BOOL)hasServerOp {
  return ![((id<ElementalUtilArrayOf>) NIL_CHK(serverOps_)) isEmpty];
}

- (BOOL)hasUnacknowledgedClientOps {
  return ![((id<ElementalUtilArrayOf>) NIL_CHK(unackedClientOps__)) isEmpty];
}

- (void)init__WithInt:(int)revision OBJC_METHOD_FAMILY_NONE {
  NSAssert(self.version_ == -1, [[NSString stringWithFormat:@"Already at a revision (%d) J2OBJC_COMMA() can't init at %d)" J2OBJC_COMMA() self.version_ J2OBJC_COMMA() revision] description]);
  NSAssert(revision >= 0, [[NSString stringWithFormat:@"Initial revision must be >= 0 J2OBJC_COMMA() not %d" J2OBJC_COMMA() revision] description]);
  self.version_ = revision;
}

- (id)peekServerOp {
  NSAssert([self hasServerOp], @"No server ops");
  return [((id<ElementalUtilArrayOf>) NIL_CHK(serverOps_)) getWithInt:0];
}

- (id<ElementalUtilArrayOf>)pushQueuedOpsToUnacked {
  NSAssert([((id<ElementalUtilArrayOf>) NIL_CHK(unackedClientOps__)) isEmpty], [[NSString stringWithFormat:@"Queue contains unacknowledged operations: %@" J2OBJC_COMMA() unackedClientOps__] description]);
  unackedClientOps__ = ((id<ElementalUtilArrayOf>) [((id<ComGoodowRealtimeOperationTransformer>) NIL_CHK(transformer_)) composeWithElementalUtilArrayOf:queuedClientOps_]);
  queuedClientOps_ = ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]);
  return [self unackedClientOps];
}

- (id)removeServerOp {
  NSAssert([self hasServerOp], @"No server ops");
  return [((id<ElementalUtilArrayOf>) NIL_CHK(serverOps_)) shift];
}

- (int)revision {
  return version__;
}

- (void)serverOpWithInt:(int)resultingRevision
                 withId:(id)serverOp {
  NSAssert(![NIL_CHK(serverOp) isNoOp], @"src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java:154 condition failed: assert !serverOp.isNoOp();");
  [self checkRevisionWithInt:resultingRevision];
  NSAssert(expectedAckedClientOps_ == 0, [[NSString stringWithFormat:@"server op arrived @%d while expecting %d client ops" J2OBJC_COMMA() resultingRevision J2OBJC_COMMA() expectedAckedClientOps_] description]);
  self.version_ = resultingRevision;
  id<ElementalUtilArrayOf> sOps = nil;
  if (![((id<ElementalUtilArrayOf>) NIL_CHK(unackedClientOps__)) isEmpty]) {
    sOps = ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]);
    [((id<ElementalUtilArrayOf>) NIL_CHK(sOps)) pushWithId:serverOp];
    ComGoodowRealtimeUtilPair *pair = ((ComGoodowRealtimeUtilPair *) [((id<ComGoodowRealtimeOperationTransformer>) NIL_CHK(transformer_)) transformWithElementalUtilArrayOf:sOps withElementalUtilArrayOf:unackedClientOps__]);
    sOps = ((ComGoodowRealtimeUtilPair *) NIL_CHK(pair)).first;
    unackedClientOps__ = ((ComGoodowRealtimeUtilPair *) NIL_CHK(pair)).second;
    if ([((id<ElementalUtilArrayOf>) NIL_CHK(sOps)) isEmpty]) {
      return;
    }
    NSAssert([((id<ElementalUtilArrayOf>) NIL_CHK(sOps)) length] == 1, @"src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java:170 condition failed: assert sOps.length() == 1;");
    NSAssert(![[((id<ElementalUtilArrayOf>) NIL_CHK(sOps)) getWithInt:0] isNoOp], @"src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java:171 condition failed: assert !sOps.get(0).isNoOp();");
  }
  if (![((id<ElementalUtilArrayOf>) NIL_CHK(queuedClientOps_)) isEmpty] && newClientOpSinceTransform_) {
    queuedClientOps_ = ((id<ElementalUtilArrayOf>) [((id<ComGoodowRealtimeOperationTransformer>) NIL_CHK(transformer_)) composeWithElementalUtilArrayOf:queuedClientOps_]);
    newClientOpSinceTransform_ = NO;
  }
  if (![((id<ElementalUtilArrayOf>) NIL_CHK(queuedClientOps_)) isEmpty]) {
    if (sOps == nil) {
      sOps = ((id<ElementalUtilArrayOf>) [ElementalUtilCollections arrayOf]);
      [sOps pushWithId:serverOp];
    }
    ComGoodowRealtimeUtilPair *pair = ((ComGoodowRealtimeUtilPair *) [((id<ComGoodowRealtimeOperationTransformer>) NIL_CHK(transformer_)) transformWithElementalUtilArrayOf:sOps withElementalUtilArrayOf:queuedClientOps_]);
    queuedClientOps_ = ((ComGoodowRealtimeUtilPair *) NIL_CHK(pair)).second;
    if ([((id<ElementalUtilArrayOf>) NIL_CHK(pair.first)) isEmpty]) {
      return;
    }
  }
  if (sOps != nil) {
    NSAssert([sOps length] == 1, @"src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java:191 condition failed: assert sOps.length() == 1;");
    serverOp = [sOps getWithInt:0];
    NSAssert(![NIL_CHK(serverOp) isNoOp], @"src/main/java/com/goodow/realtime/channel/operation/TransformQueue.java:193 condition failed: assert !serverOp.isNoOp();");
  }
  [((id<ElementalUtilArrayOf>) NIL_CHK(serverOps_)) pushWithId:serverOp];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"TQ{ %d\n  s:%@\n  exp: %d\n  u:%@\n  q:%@\n}", version__, serverOps_, expectedAckedClientOps_, unackedClientOps__, queuedClientOps_];
}

- (id<ElementalUtilArrayOf>)unackedClientOps {
  return unackedClientOps__;
}

- (int)unackedClientOpsCount {
  return [((id<ElementalUtilArrayOf>) NIL_CHK(unackedClientOps__)) length];
}

- (void)checkRevisionWithInt:(int)resultingRevision {
  NSAssert(resultingRevision >= 1, [[NSString stringWithFormat:@"New revision %d must be >= 1" J2OBJC_COMMA() resultingRevision] description]);
  NSAssert(self.version_ == resultingRevision - 1, [[NSString stringWithFormat:@"Revision mismatch: at %d J2OBJC_COMMA() received %d" J2OBJC_COMMA() self.version_ J2OBJC_COMMA() resultingRevision] description]);
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  ComGoodowRealtimeChannelOperationTransformQueue *typedCopy = (ComGoodowRealtimeChannelOperationTransformQueue *) copy;
  typedCopy.transformer = transformer_;
  typedCopy.expectedAckedClientOps = expectedAckedClientOps_;
  typedCopy.newClientOpSinceTransform = newClientOpSinceTransform_;
  typedCopy.serverOps = serverOps_;
  typedCopy.version_ = version__;
  typedCopy.queuedClientOps = queuedClientOps_;
  typedCopy.unackedClientOps_ = unackedClientOps__;
}

@end