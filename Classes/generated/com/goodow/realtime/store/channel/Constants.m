//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/workspace/realtime/realtime-store/src/main/java/com/goodow/realtime/store/channel/Constants.java
//
//  Created by retechretech.
//

#include "com/goodow/realtime/store/channel/Constants.h"

@interface ComGoodowRealtimeStoreChannelConstants : NSObject
@end

@implementation ComGoodowRealtimeStoreChannelConstants

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcClassInfo _ComGoodowRealtimeStoreChannelConstants = { "Constants", "com.goodow.realtime.store.channel", NULL, 0x201, 0, NULL, 0, NULL, 0, NULL};
  return &_ComGoodowRealtimeStoreChannelConstants;
}

@end

BOOL ComGoodowRealtimeStoreChannelConstants_Addr_initialized = NO;

NSString * ComGoodowRealtimeStoreChannelConstants_Addr_STORE_ = @"realtime.store";
NSString * ComGoodowRealtimeStoreChannelConstants_Addr_OPS_;
NSString * ComGoodowRealtimeStoreChannelConstants_Addr_PRESENCE_ = @"realtime.store.presence:";
NSString * ComGoodowRealtimeStoreChannelConstants_Addr_EVENT_;
NSString * ComGoodowRealtimeStoreChannelConstants_Addr_DOCUMENT_ERROR_ = @"document_error";

@implementation ComGoodowRealtimeStoreChannelConstants_Addr

+ (void)initialize {
  if (self == [ComGoodowRealtimeStoreChannelConstants_Addr class]) {
    ComGoodowRealtimeStoreChannelConstants_Addr_OPS_ = @"realtime.store.ops";
    ComGoodowRealtimeStoreChannelConstants_Addr_EVENT_ = @"realtime.store.event.";
    ComGoodowRealtimeStoreChannelConstants_Addr_initialized = YES;
  }
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcFieldInfo fields[] = {
    { "STORE_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Addr_STORE_,  },
    { "OPS_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Addr_OPS_,  },
    { "PRESENCE_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Addr_PRESENCE_,  },
    { "EVENT_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Addr_EVENT_,  },
    { "DOCUMENT_ERROR_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Addr_DOCUMENT_ERROR_,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreChannelConstants_Addr = { "Addr", "com.goodow.realtime.store.channel", "Constants", 0x209, 0, NULL, 5, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreChannelConstants_Addr;
}

@end

@interface ComGoodowRealtimeStoreChannelConstants_Key : NSObject
@end

NSString * ComGoodowRealtimeStoreChannelConstants_Key_ID_ = @"id";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_OP_DATA_ = @"opData";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_OP_ = @"op";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_OPS_ = @"ops";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_SESSION_ID_ = @"sid";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_VERSION_ = @"v";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_SNAPSHOT_ = @"snapshot";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_ACCESS_TOKEN_ = @"accessToken";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_IS_JOINED_ = @"isJoined";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_USER_ID_ = @"userId";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_DISPLAY_NAME_ = @"displayName";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_COLOR_ = @"color";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_IS_ME_ = @"isMe";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_IS_ANONYMOUS_ = @"isAnonymous";
NSString * ComGoodowRealtimeStoreChannelConstants_Key_PHOTO_URL_ = @"photoUrl";

@implementation ComGoodowRealtimeStoreChannelConstants_Key

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcFieldInfo fields[] = {
    { "ID_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_ID_,  },
    { "OP_DATA_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_OP_DATA_,  },
    { "OP_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_OP_,  },
    { "OPS_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_OPS_,  },
    { "SESSION_ID_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_SESSION_ID_,  },
    { "VERSION_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_VERSION_,  },
    { "SNAPSHOT_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_SNAPSHOT_,  },
    { "ACCESS_TOKEN_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_ACCESS_TOKEN_,  },
    { "IS_JOINED_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_IS_JOINED_,  },
    { "USER_ID_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_USER_ID_,  },
    { "DISPLAY_NAME_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_DISPLAY_NAME_,  },
    { "COLOR_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_COLOR_,  },
    { "IS_ME_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_IS_ME_,  },
    { "IS_ANONYMOUS_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_IS_ANONYMOUS_,  },
    { "PHOTO_URL_", NULL, 0x19, "Ljava.lang.String;", &ComGoodowRealtimeStoreChannelConstants_Key_PHOTO_URL_,  },
  };
  static J2ObjcClassInfo _ComGoodowRealtimeStoreChannelConstants_Key = { "Key", "com.goodow.realtime.store.channel", "Constants", 0x209, 0, NULL, 15, fields, 0, NULL};
  return &_ComGoodowRealtimeStoreChannelConstants_Key;
}

@end
