//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDoubleType")
#ifdef RESTRICT_CoTouchlabSqueakyFieldTypesDoubleType
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDoubleType 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDoubleType 1
#endif
#undef RESTRICT_CoTouchlabSqueakyFieldTypesDoubleType

#if !defined (CoTouchlabSqueakyFieldTypesDoubleType_) && (INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDoubleType || defined(INCLUDE_CoTouchlabSqueakyFieldTypesDoubleType))
#define CoTouchlabSqueakyFieldTypesDoubleType_

#define RESTRICT_CoTouchlabSqueakyFieldTypesDoubleObjectType 1
#define INCLUDE_CoTouchlabSqueakyFieldTypesDoubleObjectType 1
#include "CoTouchlabSqueakyFieldTypesDoubleObjectType.h"

@class CoTouchlabSqueakyFieldSqlType;
@class IOSObjectArray;

@interface CoTouchlabSqueakyFieldTypesDoubleType : CoTouchlabSqueakyFieldTypesDoubleObjectType

#pragma mark Public

+ (CoTouchlabSqueakyFieldTypesDoubleType *)getSingleton;

- (jboolean)isPrimitive;

#pragma mark Protected

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes;

@end

J2OBJC_STATIC_INIT(CoTouchlabSqueakyFieldTypesDoubleType)

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesDoubleType *CoTouchlabSqueakyFieldTypesDoubleType_getSingleton();

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesDoubleType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesDoubleType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesDoubleType *new_CoTouchlabSqueakyFieldTypesDoubleType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesDoubleType *create_CoTouchlabSqueakyFieldTypesDoubleType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyFieldTypesDoubleType)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDoubleType")
