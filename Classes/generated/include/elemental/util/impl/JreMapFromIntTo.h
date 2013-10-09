//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//
//  Created by Larry Tin <dev@goodow.com>
//

#ifndef _ElementalUtilImplJreMapFromIntTo_H_
#define _ElementalUtilImplJreMapFromIntTo_H_

@class JavaUtilHashMap;
@protocol ElementalUtilArrayOf;
@protocol ElementalUtilArrayOfInt;

#import "JreEmulation.h"
#include "elemental/util/MapFromIntTo.h"

@interface ElementalUtilImplJreMapFromIntTo : NSObject < ElementalUtilMapFromIntTo > {
 @public
  JavaUtilHashMap *map_;
}

- (id)init;
- (id)initWithJavaUtilHashMap:(JavaUtilHashMap *)map;
- (id)getWithInt:(int)key;
- (BOOL)hasKeyWithInt:(int)key;
- (id<ElementalUtilArrayOfInt>)keys;
- (void)putWithInt:(int)key
            withId:(id)value;
- (void)removeWithInt:(int)key;
- (id<ElementalUtilArrayOf>)values;
- (void)copyAllFieldsTo:(ElementalUtilImplJreMapFromIntTo *)other;
@end

J2OBJC_FIELD_SETTER(ElementalUtilImplJreMapFromIntTo, map_, JavaUtilHashMap *)

#endif // _ElementalUtilImplJreMapFromIntTo_H_