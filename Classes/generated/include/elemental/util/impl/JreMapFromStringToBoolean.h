//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _ElementalUtilImplJreMapFromStringToBoolean_H_
#define _ElementalUtilImplJreMapFromStringToBoolean_H_

@class ElementalUtilImplJreMapFromStringTo;
@protocol ElementalUtilArrayOfBoolean;
@protocol ElementalUtilArrayOfString;

#import "JreEmulation.h"
#include "elemental/util/MapFromStringToBoolean.h"

@interface ElementalUtilImplJreMapFromStringToBoolean : NSObject < ElementalUtilMapFromStringToBoolean > {
 @public
  ElementalUtilImplJreMapFromStringTo *map_;
}

- (id)init;
- (BOOL)getWithNSString:(NSString *)key;
- (BOOL)hasKeyWithNSString:(NSString *)key;
- (id<ElementalUtilArrayOfString>)keys;
- (void)putWithNSString:(NSString *)key
            withBoolean:(BOOL)value;
- (void)removeWithNSString:(NSString *)key;
- (id<ElementalUtilArrayOfBoolean>)values;
- (void)copyAllFieldsTo:(ElementalUtilImplJreMapFromStringToBoolean *)other;
@end

J2OBJC_FIELD_SETTER(ElementalUtilImplJreMapFromStringToBoolean, map_, ElementalUtilImplJreMapFromStringTo *)

#endif // _ElementalUtilImplJreMapFromStringToBoolean_H_