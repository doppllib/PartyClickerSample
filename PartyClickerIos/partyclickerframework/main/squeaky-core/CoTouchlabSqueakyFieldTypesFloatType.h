//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/Squeaky-doppl/core/src/main/java/co/touchlab/squeaky/field/types/FloatType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesFloatType")
#ifdef RESTRICT_CoTouchlabSqueakyFieldTypesFloatType
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesFloatType 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesFloatType 1
#endif
#undef RESTRICT_CoTouchlabSqueakyFieldTypesFloatType

#if !defined (CoTouchlabSqueakyFieldTypesFloatType_) && (INCLUDE_ALL_CoTouchlabSqueakyFieldTypesFloatType || defined(INCLUDE_CoTouchlabSqueakyFieldTypesFloatType))
#define CoTouchlabSqueakyFieldTypesFloatType_

#define RESTRICT_CoTouchlabSqueakyFieldTypesFloatObjectType 1
#define INCLUDE_CoTouchlabSqueakyFieldTypesFloatObjectType 1
#include "CoTouchlabSqueakyFieldTypesFloatObjectType.h"

@class CoTouchlabSqueakyFieldSqlType;
@class IOSObjectArray;

@interface CoTouchlabSqueakyFieldTypesFloatType : CoTouchlabSqueakyFieldTypesFloatObjectType

#pragma mark Public

+ (CoTouchlabSqueakyFieldTypesFloatType *)getSingleton;

- (jboolean)isPrimitive;

#pragma mark Protected

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes;

@end

J2OBJC_STATIC_INIT(CoTouchlabSqueakyFieldTypesFloatType)

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesFloatType *CoTouchlabSqueakyFieldTypesFloatType_getSingleton();

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesFloatType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesFloatType *new_CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesFloatType *create_CoTouchlabSqueakyFieldTypesFloatType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyFieldTypesFloatType)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesFloatType")
