//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#include "com/goodow/realtime/channel/http/HttpRequest.h"
#include "com/goodow/realtime/channel/http/HttpTransport.h"
#include "com/goodow/realtime/channel/http/objc/ObjCHttpRequest.h"
#include "com/goodow/realtime/channel/http/objc/ObjCHttpTransport.h"

@implementation ComGoodowRealtimeChannelHttpObjcObjCHttpTransport

- (id<ComGoodowRealtimeChannelHttpHttpRequest>)buildRequestWithNSString:(NSString *)method
                                                           withNSString:(NSString *)url {
  return [[ComGoodowRealtimeChannelHttpObjcObjCHttpRequest alloc] initWithNSString:method withNSString:[NSString stringWithFormat:@"%@%@", [ComGoodowRealtimeChannelHttpHttpTransport CHANNEL], url]];
}

- (id)init {
  return [super init];
}

@end