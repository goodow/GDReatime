//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/com/goodow/realtime/channel/http/objc/ObjCHttpTransport.java
//
//  Created by retechretech on 13-5-25.
//

#import "com/goodow/realtime/channel/http/HttpRequest.h"
#import "com/goodow/realtime/channel/http/objc/ObjCHttpRequest.h"
#import "com/goodow/realtime/channel/http/objc/ObjCHttpTransport.h"

@implementation ComGoodowRealtimeChannelHttpObjcObjCHttpTransport

static NSString * ComGoodowRealtimeChannelHttpObjcObjCHttpTransport_RPC_ROOT_ = @"http://realtime.goodow.com";

+ (NSString *)RPC_ROOT {
  return ComGoodowRealtimeChannelHttpObjcObjCHttpTransport_RPC_ROOT_;
}

- (ComGoodowRealtimeChannelHttpHttpRequest *)buildRequestWithNSString:(NSString *)method
                                                         withNSString:(NSString *)url {
  return [[ComGoodowRealtimeChannelHttpObjcObjCHttpRequest alloc] initWithNSString:method withNSString:[NSString stringWithFormat:@"http://realtime.goodow.com%@", url]];
}

- (id)init {
  return [super init];
}

@end