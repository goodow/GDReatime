//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/elemental/util/Collections.java
//
//  Created by retechretech on 13-5-25.
//

#import "elemental/util/ArrayOf.h"
#import "elemental/util/ArrayOfBoolean.h"
#import "elemental/util/ArrayOfInt.h"
#import "elemental/util/ArrayOfNumber.h"
#import "elemental/util/ArrayOfString.h"
#import "elemental/util/Collections.h"
#import "elemental/util/MapFromIntTo.h"
#import "elemental/util/MapFromIntToString.h"
#import "elemental/util/MapFromStringTo.h"
#import "elemental/util/MapFromStringToBoolean.h"
#import "elemental/util/MapFromStringToInt.h"
#import "elemental/util/MapFromStringToNumber.h"
#import "elemental/util/MapFromStringToString.h"
#import "elemental/util/impl/JreArrayOf.h"
#import "elemental/util/impl/JreArrayOfBoolean.h"
#import "elemental/util/impl/JreArrayOfInt.h"
#import "elemental/util/impl/JreArrayOfNumber.h"
#import "elemental/util/impl/JreArrayOfString.h"
#import "elemental/util/impl/JreMapFromIntTo.h"
#import "elemental/util/impl/JreMapFromIntToString.h"
#import "elemental/util/impl/JreMapFromStringTo.h"
#import "elemental/util/impl/JreMapFromStringToBoolean.h"
#import "elemental/util/impl/JreMapFromStringToInt.h"
#import "elemental/util/impl/JreMapFromStringToNumber.h"
#import "elemental/util/impl/JreMapFromStringToString.h"

@implementation ElementalUtilCollections

+ (id<ElementalUtilArrayOf>)arrayOf {
  return [[[ElementalUtilImplJreArrayOf alloc] init] autorelease];
}

+ (id<ElementalUtilArrayOfBoolean>)arrayOfBoolean {
  return [[[ElementalUtilImplJreArrayOfBoolean alloc] init] autorelease];
}

+ (id<ElementalUtilArrayOfInt>)arrayOfInt {
  return [[[ElementalUtilImplJreArrayOfInt alloc] init] autorelease];
}

+ (id<ElementalUtilArrayOfNumber>)arrayOfNumber {
  return [[[ElementalUtilImplJreArrayOfNumber alloc] init] autorelease];
}

+ (id<ElementalUtilArrayOfString>)arrayOfString {
  return [[[ElementalUtilImplJreArrayOfString alloc] init] autorelease];
}

+ (id<ElementalUtilMapFromIntTo>)mapFromIntTo {
  return [[[ElementalUtilImplJreMapFromIntTo alloc] init] autorelease];
}

+ (id<ElementalUtilMapFromIntToString>)mapFromIntToString {
  return [[[ElementalUtilImplJreMapFromIntToString alloc] init] autorelease];
}

+ (id<ElementalUtilMapFromStringTo>)mapFromStringTo {
  return [[[ElementalUtilImplJreMapFromStringTo alloc] init] autorelease];
}

+ (id<ElementalUtilMapFromStringToBoolean>)mapFromStringToBoolean {
  return [[[ElementalUtilImplJreMapFromStringToBoolean alloc] init] autorelease];
}

+ (id<ElementalUtilMapFromStringToInt>)mapFromStringToInt {
  return [[[ElementalUtilImplJreMapFromStringToInt alloc] init] autorelease];
}

+ (id<ElementalUtilMapFromStringToNumber>)mapFromStringToNumber {
  return [[[ElementalUtilImplJreMapFromStringToNumber alloc] init] autorelease];
}

+ (id<ElementalUtilMapFromStringToString>)mapFromStringToString {
  return [[[ElementalUtilImplJreMapFromStringToString alloc] init] autorelease];
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  [super dealloc];
}

@end