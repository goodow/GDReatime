//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/Collaborator.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/Collaborator.h"
#import "com/goodow/realtime/util/ModelFactory.h"

@implementation GDRCollaborator

@synthesize color = color_;
@synthesize displayName = displayName_;
@synthesize isAnonymous = isAnonymous_;
@synthesize isMe = isMe_;
@synthesize photoUrl = photoUrl_;
@synthesize sessionId = sessionId_;
@synthesize userId = userId_;

- (id)initWithNSString:(NSString *)userId
          withNSString:(NSString *)sessionId
          withNSString:(NSString *)displayName
          withNSString:(NSString *)color
              withBOOL:(BOOL)isMe
              withBOOL:(BOOL)isAnonymous
          withNSString:(NSString *)photoUrl {
  if ((self = [super init])) {
    self.userId = userId;
    self.sessionId = sessionId;
    self.displayName = displayName;
    self.color = color;
    self.isMe = isMe;
    self.isAnonymous = isAnonymous;
    self.photoUrl = photoUrl;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  GDRCollaborator *typedCopy = (GDRCollaborator *) copy;
  typedCopy.color = color_;
  typedCopy.displayName = displayName_;
  typedCopy.isAnonymous = isAnonymous_;
  typedCopy.isMe = isMe_;
  typedCopy.photoUrl = photoUrl_;
  typedCopy.sessionId = sessionId_;
  typedCopy.userId = userId_;
}

@end