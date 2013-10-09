//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "IOSClass.h"
#include "com/goodow/realtime/channel/Channel.h"
#include "com/goodow/realtime/channel/ChannelDemuxer.h"
#include "com/goodow/realtime/channel/ChannelError.h"
#include "com/goodow/realtime/channel/Socket.h"
#include "com/goodow/realtime/channel/constant/Constants.h"
#include "com/goodow/realtime/channel/constant/Platform.h"
#include "com/goodow/realtime/channel/operation/OperationSucker.h"
#include "com/goodow/realtime/channel/operation/ReceiveOpChannelImpl.h"
#include "com/goodow/realtime/channel/rpc/Rpc.h"
#include "com/goodow/realtime/channel/rpc/RpcImpl.h"
#include "com/goodow/realtime/channel/util/ChannelFactory.h"
#include "com/goodow/realtime/channel/util/ChannelNative.h"
#include "com/goodow/realtime/operation/OperationSink.h"
#include "com/goodow/realtime/operation/id/IdGenerator.h"
#include "elemental/json/Json.h"
#include "elemental/json/JsonObject.h"
#include "elemental/util/ArrayOfString.h"
#include "elemental/util/Collections.h"
#include "elemental/util/MapFromStringTo.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"

@implementation ComGoodowRealtimeChannelChannelDemuxer

static JavaUtilLoggingLogger * ComGoodowRealtimeChannelChannelDemuxer_log_;
static ComGoodowRealtimeChannelChannelDemuxer * ComGoodowRealtimeChannelChannelDemuxer_INSTANCE_;
static id<ElementalUtilMapFromStringTo> ComGoodowRealtimeChannelChannelDemuxer_entries_;
static id<ComGoodowRealtimeChannelRpcRpc> ComGoodowRealtimeChannelChannelDemuxer_rpc_;
static NSString * ComGoodowRealtimeChannelChannelDemuxer_sessionId_;

+ (JavaUtilLoggingLogger *)log {
  return ComGoodowRealtimeChannelChannelDemuxer_log_;
}

+ (ComGoodowRealtimeChannelChannelDemuxer *)INSTANCE {
  return ComGoodowRealtimeChannelChannelDemuxer_INSTANCE_;
}

+ (id<ElementalUtilMapFromStringTo>)entries {
  return ComGoodowRealtimeChannelChannelDemuxer_entries_;
}

+ (id<ComGoodowRealtimeChannelRpcRpc>)rpc {
  return ComGoodowRealtimeChannelChannelDemuxer_rpc_;
}

+ (NSString *)sessionId {
  return ComGoodowRealtimeChannelChannelDemuxer_sessionId_;
}

+ (void)setSessionId:(NSString *)sessionId {
  ComGoodowRealtimeChannelChannelDemuxer_sessionId_ = sessionId;
}

+ (ComGoodowRealtimeChannelChannelDemuxer *)get {
  return ComGoodowRealtimeChannelChannelDemuxer_INSTANCE_;
}

+ (NSString *)getSessionId {
  if (ComGoodowRealtimeChannelChannelDemuxer_sessionId_ != nil) {
    return ComGoodowRealtimeChannelChannelDemuxer_sessionId_;
  }
  ComGoodowRealtimeOperationIdIdGenerator *idGenerator = [[ComGoodowRealtimeOperationIdIdGenerator alloc] init];
  NSString *userAgent = [((id<ComGoodowRealtimeChannelUtilChannelFactory>) nil_chk([ComGoodowRealtimeChannelUtilChannelNative get])) getDefaultUserAgent];
  NSString *sid = [idGenerator nextWithInt:ComGoodowRealtimeChannelConstantConstants_SESSION_LENGTH - 1];
  ComGoodowRealtimeChannelChannelDemuxer_sessionId_ = [NSString stringWithFormat:@"%C%@", [((ComGoodowRealtimeChannelConstantPlatformEnum *) nil_chk([ComGoodowRealtimeChannelConstantPlatformEnum fromUserAgentWithNSString:userAgent])) prefix], sid];
  return ComGoodowRealtimeChannelChannelDemuxer_sessionId_;
}

- (id)init {
  if (self = [super init]) {
    channelToken_ = nil;
  }
  return self;
}

- (void)clear {
  for (int i = 0, len = [((id<ElementalUtilArrayOfString>) nil_chk([((id<ElementalUtilMapFromStringTo>) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_entries_)) keys])) length]; i < len; i++) {
    [self closeWithNSString:[((id<ElementalUtilArrayOfString>) nil_chk([ComGoodowRealtimeChannelChannelDemuxer_entries_ keys])) getWithInt:i]];
  }
}

- (void)close {
  [((JavaUtilLoggingLogger *) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_log_)) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel FINE] withNSString:@"onClose "];
}

- (void)closeWithNSString:(NSString *)id_ {
  [((id<ElementalUtilMapFromStringTo>) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_entries_)) removeWithNSString:id_];
}

- (void)connectWithNSString:(NSString *)token {
  NSAssert(token != nil, @"Null token");
  if (![((NSString *) nil_chk(token)) isEqual:self->channelToken_]) {
    [((JavaUtilLoggingLogger *) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_log_)) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel INFO] withNSString:[NSString stringWithFormat:@"Connecting with token %@", token]];
    self->channelToken_ = token;
    if (socket_ != nil) {
      [socket_ close];
    }
    id<ComGoodowRealtimeChannelChannel> channel = [((id<ComGoodowRealtimeChannelUtilChannelFactory>) nil_chk([ComGoodowRealtimeChannelUtilChannelNative get])) createChannelWithNSString:token];
    socket_ = [((id<ComGoodowRealtimeChannelChannel>) nil_chk(channel)) openWithComGoodowRealtimeChannelSocketListener:self];
  }
}

- (NSString *)getAccessToken {
  return accessToken_;
}

- (id<ElementalUtilArrayOfString>)getIds {
  return [((id<ElementalUtilMapFromStringTo>) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_entries_)) keys];
}

- (int)getRevisionWithNSString:(NSString *)id_ {
  return [((ComGoodowRealtimeChannelOperationReceiveOpChannelImpl *) nil_chk(((ComGoodowRealtimeChannelChannelDemuxer_Entry *) nil_chk([((id<ElementalUtilMapFromStringTo>) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_entries_)) getWithNSString:id_]))->channel_)) revision];
}

- (id<ComGoodowRealtimeChannelRpcRpc>)getRpc {
  return ComGoodowRealtimeChannelChannelDemuxer_rpc_;
}

- (id<ComGoodowRealtimeOperationOperationSink>)getSnapshotWithNSString:(NSString *)id_ {
  if (![((id<ElementalUtilMapFromStringTo>) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_entries_)) hasKeyWithNSString:id_]) {
    return nil;
  }
  return ((ComGoodowRealtimeChannelChannelDemuxer_Entry *) nil_chk([ComGoodowRealtimeChannelChannelDemuxer_entries_ getWithNSString:id_]))->snapshot_;
}

- (void)onClose {
  [((JavaUtilLoggingLogger *) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_log_)) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel FINE] withNSString:@"onClose "];
}

- (void)onErrorWithComGoodowRealtimeChannelChannelError:(id<ComGoodowRealtimeChannelChannelError>)error {
  [((JavaUtilLoggingLogger *) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_log_)) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel WARNING] withNSString:[NSString stringWithFormat:@"onError code=%@ description=%@", [((id<ComGoodowRealtimeChannelChannelError>) nil_chk(error)) getCode], [error getDescription]]];
}

- (void)onMessageWithNSString:(NSString *)message {
  if (message == nil) {
    [((JavaUtilLoggingLogger *) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_log_)) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel WARNING] withNSString:@"Null data on channel"];
    return;
  }
  id<GDRJsonObject> msg = [GDRJson parseWithNSString:message];
  [self publishMessageWithGDRJsonObject:msg];
}

- (void)onOpen {
  [((JavaUtilLoggingLogger *) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_log_)) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel FINE] withNSString:@"onOpened "];
}

- (void)publishMessageWithGDRJsonObject:(id<GDRJsonObject>)msg {
  [((JavaUtilLoggingLogger *) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_log_)) logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel FINE] withNSString:[NSString stringWithFormat:@"publishMessage data=%@", [((id<GDRJsonObject>) nil_chk(msg)) toJson]]];
  NSAssert([msg hasKeyWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params ID]] && [msg hasKeyWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params DELTAS]], [[NSString stringWithFormat:@"Bad data on channel (Missing fields) %@" J2OBJC_COMMA() msg] description]);
  NSString *id_ = [msg getStringWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params ID]];
  ComGoodowRealtimeChannelChannelDemuxer_Entry *entry = [((id<ElementalUtilMapFromStringTo>) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_entries_)) getWithNSString:id_];
  if (entry == nil) {
    [ComGoodowRealtimeChannelChannelDemuxer_log_ logWithJavaUtilLoggingLevel:[JavaUtilLoggingLevel WARNING] withNSString:[NSString stringWithFormat:@"No channel registered for object with id %@", id_]];
    return;
  }
  if ([msg hasKeyWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params IS_JOINED]]) {
    [((id<ComGoodowRealtimeChannelOperationOperationSucker_Listener>) nil_chk(((ComGoodowRealtimeChannelChannelDemuxer_Entry *) nil_chk(entry))->snapshot_)) onCollaboratorChangedWithBoolean:[msg getBooleanWithNSString:[ComGoodowRealtimeChannelConstantConstants_Params IS_JOINED]] withGDRJsonObject:msg];
  }
  else {
    [((ComGoodowRealtimeChannelOperationReceiveOpChannelImpl *) nil_chk(((ComGoodowRealtimeChannelChannelDemuxer_Entry *) nil_chk(entry))->channel_)) onMessageWithGDRJsonObject:msg];
  }
}

- (void)register__WithNSString:(NSString *)id_
withComGoodowRealtimeChannelOperationOperationSucker_Listener:(id<ComGoodowRealtimeChannelOperationOperationSucker_Listener>)snapshot
withComGoodowRealtimeChannelOperationReceiveOpChannelImpl:(ComGoodowRealtimeChannelOperationReceiveOpChannelImpl *)channel {
  NSAssert(![((id<ElementalUtilMapFromStringTo>) nil_chk(ComGoodowRealtimeChannelChannelDemuxer_entries_)) hasKeyWithNSString:id_], [[NSString stringWithFormat:@"Channel handler already registered for %@" J2OBJC_COMMA() id_] description]);
  [ComGoodowRealtimeChannelChannelDemuxer_entries_ putWithNSString:id_ withId:[[ComGoodowRealtimeChannelChannelDemuxer_Entry alloc] initWithComGoodowRealtimeChannelOperationOperationSucker_Listener:snapshot withComGoodowRealtimeChannelOperationReceiveOpChannelImpl:channel]];
}

- (void)setAccessTokenWithNSString:(NSString *)accessToken {
  self->accessToken_ = accessToken;
}

+ (void)initialize {
  if (self == [ComGoodowRealtimeChannelChannelDemuxer class]) {
    ComGoodowRealtimeChannelChannelDemuxer_log_ = [JavaUtilLoggingLogger getLoggerWithNSString:[[IOSClass classWithClass:[ComGoodowRealtimeChannelChannelDemuxer class]] getName]];
    ComGoodowRealtimeChannelChannelDemuxer_INSTANCE_ = [[ComGoodowRealtimeChannelChannelDemuxer alloc] init];
    ComGoodowRealtimeChannelChannelDemuxer_entries_ = [ElementalUtilCollections mapFromStringTo];
    ComGoodowRealtimeChannelChannelDemuxer_rpc_ = [[ComGoodowRealtimeChannelRpcRpcImpl alloc] initWithNSString:@"" withComGoodowRealtimeChannelRpcRpc_ConnectionStateListener:nil];
  }
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeChannelChannelDemuxer *)other {
  [super copyAllFieldsTo:other];
  other->accessToken_ = accessToken_;
  other->channelToken_ = channelToken_;
  other->socket_ = socket_;
}

@end
@implementation ComGoodowRealtimeChannelChannelDemuxer_Entry

- (id)initWithComGoodowRealtimeChannelOperationOperationSucker_Listener:(id<ComGoodowRealtimeChannelOperationOperationSucker_Listener>)snapshot
              withComGoodowRealtimeChannelOperationReceiveOpChannelImpl:(ComGoodowRealtimeChannelOperationReceiveOpChannelImpl *)channel {
  if (self = [super init]) {
    self->snapshot_ = snapshot;
    self->channel_ = channel;
  }
  return self;
}

- (void)copyAllFieldsTo:(ComGoodowRealtimeChannelChannelDemuxer_Entry *)other {
  [super copyAllFieldsTo:other];
  other->channel_ = channel_;
  other->snapshot_ = snapshot_;
}

@end