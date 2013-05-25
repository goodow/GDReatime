//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/CollaboratorJoinedEvent.java
//
//  Created by retechretech on 13-5-25.
//

@class GDRCollaborator;
@class GDRDocument;

#import "JreEmulation.h"
#import "com/goodow/realtime/Disposable.h"

@interface GDRCollaboratorJoinedEvent : NSObject < GDRDisposable > {
 @public
  GDRCollaborator *collaborator_;
}

@property (nonatomic, strong) GDRCollaborator *collaborator;

- (id)initWithGDRDocument:(GDRDocument *)document
      withGDRCollaborator:(GDRCollaborator *)collaborator;
- (GDRCollaboratorJoinedEvent *)deserializeWithGDRDocument:(GDRDocument *)source
                                                    withId:(id)serialized;
@end

typedef GDRCollaboratorJoinedEvent ComGoodowRealtimeCollaboratorJoinedEvent;