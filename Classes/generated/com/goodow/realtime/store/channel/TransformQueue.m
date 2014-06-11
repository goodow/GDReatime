//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/channel/TransformQueue.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/json/Json.h"
#include "com/goodow/realtime/json/JsonArray.h"
#include "com/goodow/realtime/operation/Operation.h"
#include "com/goodow/realtime/operation/Transformer.h"
#include "com/goodow/realtime/operation/util/Pair.h"
#include "com/goodow/realtime/store/channel/TransformQueue.h"

@implementation ComGoodowRealtimeStoreChannelTransformQueue

- (id)initWithComGoodowRealtimeOperationTransformer:(id<ComGoodowRealtimeOperationTransformer>)transformer {
  if (self = [super init]) {
    version__ = -1;
    expectedAckedClientOps_ = 0;
    serverOps_ = [ComGoodowRealtimeJsonJson createArray];
    queuedClientOps_ = [ComGoodowRealtimeJsonJson createArray];
    self->transformer_ = transformer;
  }
  return self;
}

- (void)ackClientOpWithDouble:(double)appliedAt {
  [self checkAppliedVersionWithDouble:appliedAt];
  NSAssert(expectedAckedClientOps_ == 0, [[NSString stringWithFormat:@"must call expectedAck J2OBJC_COMMA() there are %f expectedAckedClientOps" J2OBJC_COMMA() expectedAckedClientOps_] description]);
  NSAssert(unackedClientOp__ != nil, [[NSString stringWithFormat:@"%@: unackedClientOp is null; applied @%f" J2OBJC_COMMA() self J2OBJC_COMMA() appliedAt] description]);
  version__++;
  unackedClientOp__ = nil;
}

- (id)ackOpIfVersionMatchesWithDouble:(double)appliedAt {
  if (appliedAt == version__) {
    NSAssert(unackedClientOp__ != nil, @"/Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/channel/TransformQueue.java:53 condition failed: assert unackedClientOp != null;");
    id<ComGoodowRealtimeOperationOperation> toRtn = unackedClientOp__;
    unackedClientOp__ = nil;
    expectedAckedClientOps_++;
    version__++;
    return toRtn;
  }
  return nil;
}

- (void)clientOpWithId:(id<ComGoodowRealtimeOperationOperation>)clientOp {
  if ([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serverOps_)) length] > 0) {
    id<ComGoodowRealtimeJsonJsonArray> newServerOps = [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([ComGoodowRealtimeJsonJson createArray])) pushWithId:clientOp];
    [serverOps_ forEachWithComGoodowRealtimeJsonJsonArray_ListIterator:[[ComGoodowRealtimeStoreChannelTransformQueue_$1 alloc] initWithComGoodowRealtimeStoreChannelTransformQueue:self withComGoodowRealtimeJsonJsonArray:newServerOps]];
    clientOp = [newServerOps removeWithInt:[((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(newServerOps)) length] - 1];
    serverOps_ = newServerOps;
  }
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(queuedClientOps_)) pushWithId:clientOp];
}

- (BOOL)expectedAckWithDouble:(double)appliedAt {
  if (expectedAckedClientOps_ == 0) {
    return NO;
  }
  NSAssert(appliedAt == version__ - expectedAckedClientOps_, [[NSString stringWithFormat:@"bad applied @%f J2OBJC_COMMA() current @%f J2OBJC_COMMA() expected remaining %f" J2OBJC_COMMA() appliedAt J2OBJC_COMMA() version__ J2OBJC_COMMA() expectedAckedClientOps_] description]);
  expectedAckedClientOps_--;
  return YES;
}

- (BOOL)hasQueuedClientOps {
  return [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(queuedClientOps_)) length] > 0;
}

- (BOOL)hasServerOp {
  return [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serverOps_)) length] > 0;
}

- (void)init__WithDouble:(double)version_ {
  NSAssert(self->version__ == -1, [[NSString stringWithFormat:@"Already at a version (%f) J2OBJC_COMMA() can't init at %f)" J2OBJC_COMMA() self->version__ J2OBJC_COMMA() version_] description]);
  NSAssert(version_ >= 0, [[NSString stringWithFormat:@"Initial version must be >= 0 J2OBJC_COMMA() not %f" J2OBJC_COMMA() version_] description]);
  self->version__ = version_;
}

- (id)peekServerOp {
  NSAssert([self hasServerOp], @"No server ops");
  return [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serverOps_)) getWithInt:0];
}

- (id)pushQueuedOpsToUnacked {
  NSAssert(unackedClientOp__ == nil, [[NSString stringWithFormat:@"Queue contains unacknowledged operation: %@" J2OBJC_COMMA() unackedClientOp__] description]);
  unackedClientOp__ = [((id<ComGoodowRealtimeOperationTransformer>) nil_chk(transformer_)) composeWithComGoodowRealtimeJsonJsonArray:queuedClientOps_];
  queuedClientOps_ = [ComGoodowRealtimeJsonJson createArray];
  return [self unackedClientOp];
}

- (id)removeServerOp {
  NSAssert([self hasServerOp], @"No server ops");
  return [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serverOps_)) removeWithInt:0];
}

- (void)serverOpWithDouble:(double)appliedVersion
                    withId:(id<ComGoodowRealtimeOperationOperation>)serverOp {
  [self checkAppliedVersionWithDouble:appliedVersion];
  NSAssert(expectedAckedClientOps_ == 0, [[NSString stringWithFormat:@"server op applied @%f while expecting %f client ops" J2OBJC_COMMA() appliedVersion J2OBJC_COMMA() expectedAckedClientOps_] description]);
  version__++;
  if (unackedClientOp__ != nil) {
    ComGoodowRealtimeOperationUtilPair *pair = [((id<ComGoodowRealtimeOperationTransformer>) nil_chk(transformer_)) transformWithId:unackedClientOp__ withId:serverOp];
    unackedClientOp__ = ((ComGoodowRealtimeOperationUtilPair *) nil_chk(pair))->first_;
    serverOp = pair->second_;
  }
  if ([((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(queuedClientOps_)) length] > 0) {
    id<ComGoodowRealtimeOperationOperation> composedClientOp = [((id<ComGoodowRealtimeOperationTransformer>) nil_chk(transformer_)) composeWithComGoodowRealtimeJsonJsonArray:queuedClientOps_];
    ComGoodowRealtimeOperationUtilPair *pair = [transformer_ transformWithId:composedClientOp withId:serverOp];
    queuedClientOps_ = [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([ComGoodowRealtimeJsonJson createArray])) pushWithId:((ComGoodowRealtimeOperationUtilPair *) nil_chk(pair))->first_];
    serverOp = pair->second_;
  }
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(serverOps_)) pushWithId:serverOp];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"TQ{ %f\n  s:%@\n  exp: %f\n  u:%@\n  q:%@\n}", version__, serverOps_, expectedAckedClientOps_, unackedClientOp__, queuedClientOps_];
}

- (id)unackedClientOp {
  return unackedClientOp__;
}

- (double)version__ {
  return version__;
}

- (void)checkAppliedVersionWithDouble:(double)appliedVersion {
  NSAssert(appliedVersion >= 0, [[NSString stringWithFormat:@"Applied version %f must be >= 0" J2OBJC_COMMA() appliedVersion] description]);
  NSAssert(self->version__ == appliedVersion, [[NSString stringWithFormat:@"Version mismatch: @%f J2OBJC_COMMA() applied @%f" J2OBJC_COMMA() self->version__ J2OBJC_COMMA() appliedVersion] description]);
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreChannelTransformQueue *)other {
  [super copyAllFieldsTo:other];
  other->expectedAckedClientOps_ = expectedAckedClientOps_;
  other->queuedClientOps_ = queuedClientOps_;
  other->serverOps_ = serverOps_;
  other->transformer_ = transformer_;
  other->unackedClientOp__ = unackedClientOp__;
  other->version__ = version__;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithComGoodowRealtimeOperationTransformer:", "TransformQueue", NULL, 0x1, NULL },
    { "ackClientOpWithDouble:", "ackClientOp", "V", 0x1, NULL },
    { "ackOpIfVersionMatchesWithDouble:", "ackOpIfVersionMatches", "TO;", 0x1, NULL },
    { "clientOpWithId:", "clientOp", "V", 0x1, NULL },
    { "expectedAckWithDouble:", "expectedAck", "Z", 0x1, NULL },
    { "hasQueuedClientOps", NULL, "Z", 0x1, NULL },
    { "hasServerOp", NULL, "Z", 0x1, NULL },
    { "init__WithDouble:", "init", "V", 0x1, NULL },
    { "peekServerOp", NULL, "TO;", 0x1, NULL },
    { "pushQueuedOpsToUnacked", NULL, "TO;", 0x1, NULL },
    { "removeServerOp", NULL, "TO;", 0x1, NULL },
    { "serverOpWithDouble:withId:", "serverOp", "V", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
    { "unackedClientOp", NULL, "TO;", 0x1, NULL },
    { "version__", "version", "D", 0x1, NULL },
    { "checkAppliedVersionWithDouble:", "checkAppliedVersion", "V", 0x2, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "transformer_", NULL, 0x12, "Lcom.goodow.realtime.operation.Transformer;", NULL,  },
    { "version__", "version", 0x2, "D", NULL,  },
    { "expectedAckedClientOps_", NULL, 0x2, "D", NULL,  },
    { "serverOps_", NULL, 0x2, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "queuedClientOps_", NULL, 0x2, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
    { "unackedClientOp__", "unackedClientOp", 0x2, "TO;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreChannelTransformQueue = { "TransformQueue", "com.goodow.realtime.store.channel", NULL, 0x1, 16, methods, 6, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreChannelTransformQueue;
}

@end

@implementation ComGoodowRealtimeStoreChannelTransformQueue_$1

- (void)callWithInt:(int)index
             withId:(id<ComGoodowRealtimeOperationOperation>)serverOp {
  ComGoodowRealtimeOperationUtilPair *pair = [((id<ComGoodowRealtimeOperationTransformer>) nil_chk(this$0_->transformer_)) transformWithId:(id<ComGoodowRealtimeOperationOperation>) [val$newServerOps_ removeWithInt:[((id<ComGoodowRealtimeJsonJsonArray>) nil_chk(val$newServerOps_)) length] - 1] withId:serverOp];
  (void) [((id<ComGoodowRealtimeJsonJsonArray>) nil_chk([val$newServerOps_ pushWithId:((ComGoodowRealtimeOperationUtilPair *) nil_chk(pair))->second_])) pushWithId:pair->first_];
}

- (id)initWithComGoodowRealtimeStoreChannelTransformQueue:(ComGoodowRealtimeStoreChannelTransformQueue *)outer$
                       withComGoodowRealtimeJsonJsonArray:(id<ComGoodowRealtimeJsonJsonArray>)capture$0 {
  this$0_ = outer$;
  val$newServerOps_ = capture$0;
  return [super init];
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "callWithInt:withId:", "call", "V", 0x1, NULL },
    { "initWithComGoodowRealtimeStoreChannelTransformQueue:withComGoodowRealtimeJsonJsonArray:", "init", NULL, 0x0, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lcom.goodow.realtime.store.channel.TransformQueue;", NULL,  },
    { "val$newServerOps_", NULL, 0x1012, "Lcom.goodow.realtime.json.JsonArray;", NULL,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreChannelTransformQueue_$1 = { "$1", "com.goodow.realtime.store.channel", "TransformQueue", 0x8000, 2, methods, 2, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreChannelTransformQueue_$1;
}

@end
