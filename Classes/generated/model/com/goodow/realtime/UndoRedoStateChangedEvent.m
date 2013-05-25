//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/UndoRedoStateChangedEvent.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/Model.h"
#import "com/goodow/realtime/UndoRedoStateChangedEvent.h"
#import "com/goodow/realtime/util/ModelFactory.h"

@implementation GDRUndoRedoStateChangedEvent

@synthesize canRedo = canRedo_;
@synthesize canUndo = canUndo_;

- (id)initWithGDRModel:(GDRModel *)model
              withBOOL:(BOOL)canUndo
              withBOOL:(BOOL)canRedo {
  if ((self = [super init])) {
    self.canUndo = canUndo;
    self.canRedo = canRedo;
  }
  return self;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  GDRUndoRedoStateChangedEvent *typedCopy = (GDRUndoRedoStateChangedEvent *) copy;
  typedCopy.canRedo = canRedo_;
  typedCopy.canUndo = canUndo_;
}

@end