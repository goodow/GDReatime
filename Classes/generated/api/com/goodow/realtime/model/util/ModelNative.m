//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "com/goodow/realtime/model/util/ModelFactory.h"
#include "com/goodow/realtime/model/util/ModelNative.h"
#include "com/goodow/realtime/model/util/impl/ObjCModelFactory.h"

@implementation ComGoodowRealtimeModelUtilModelNative

+ (id<ComGoodowRealtimeModelUtilModelFactory>)get {
  return [[ComGoodowRealtimeModelUtilImplObjCModelFactory alloc] init];
}

- (id)init {
  return [super init];
}

@end