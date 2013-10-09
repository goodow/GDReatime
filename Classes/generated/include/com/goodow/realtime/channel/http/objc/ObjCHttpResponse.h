#import "JreEmulation.h"
#import "com/goodow/realtime/channel/http/HttpResponse.h"
#import "GTMHTTPFetcher/GTMHTTPFetcher.h"

@interface ComGoodowRealtimeChannelHttpObjcObjCHttpResponse : NSObject < ComGoodowRealtimeChannelHttpHttpResponse > {
}

- (id)initWithGTMHTTPFetech:(GTMHTTPFetcher *)fetcher withNSData:(NSData *)data;
@end