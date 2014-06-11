//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/impl/DefaultCollaborator.java
//
//  Created by retechretech.
//

#ifndef _ComGoodowRealtimeStoreImplDefaultCollaborator_H_
#define _ComGoodowRealtimeStoreImplDefaultCollaborator_H_

@protocol ComGoodowRealtimeJsonJsonObject;

#import "JreEmulation.h"
#include "com/goodow/realtime/store/Collaborator.h"

@interface ComGoodowRealtimeStoreImplDefaultCollaborator : NSObject < ComGoodowRealtimeStoreCollaborator > {
 @public
  NSString *color__;
  NSString *displayName__;
  BOOL isAnonymous__;
  BOOL isMe__;
  NSString *photoUrl__;
  NSString *sessionId__;
  NSString *userId__;
}

- (id)initWithComGoodowRealtimeJsonJsonObject:(id<ComGoodowRealtimeJsonJsonObject>)serialized;

- (BOOL)isEqual:(id)obj;

- (NSString *)color;

- (NSString *)displayName;

- (NSString *)photoUrl;

- (NSString *)sessionId;

- (NSString *)userId;

- (NSUInteger)hash;

- (BOOL)isAnonymous;

- (BOOL)isMe;

- (void)copyAllFieldsTo:(ComGoodowRealtimeStoreImplDefaultCollaborator *)other;

@end

__attribute__((always_inline)) inline void ComGoodowRealtimeStoreImplDefaultCollaborator_init() {}

J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultCollaborator, color__, NSString *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultCollaborator, displayName__, NSString *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultCollaborator, photoUrl__, NSString *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultCollaborator, sessionId__, NSString *)
J2OBJC_FIELD_SETTER(ComGoodowRealtimeStoreImplDefaultCollaborator, userId__, NSString *)

#endif // _ComGoodowRealtimeStoreImplDefaultCollaborator_H_
