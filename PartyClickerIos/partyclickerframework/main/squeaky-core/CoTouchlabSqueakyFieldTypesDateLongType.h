//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kgalligan/devel-doppl/Squeaky-doppl/core/src/main/java/co/touchlab/squeaky/field/types/DateLongType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDateLongType")
#ifdef RESTRICT_CoTouchlabSqueakyFieldTypesDateLongType
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDateLongType 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDateLongType 1
#endif
#undef RESTRICT_CoTouchlabSqueakyFieldTypesDateLongType

#if !defined (CoTouchlabSqueakyFieldTypesDateLongType_) && (INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDateLongType || defined(INCLUDE_CoTouchlabSqueakyFieldTypesDateLongType))
#define CoTouchlabSqueakyFieldTypesDateLongType_

#define RESTRICT_CoTouchlabSqueakyFieldTypesBaseDateType 1
#define INCLUDE_CoTouchlabSqueakyFieldTypesBaseDateType 1
#include "CoTouchlabSqueakyFieldTypesBaseDateType.h"

@class CoTouchlabSqueakyFieldFieldType;
@class CoTouchlabSqueakyFieldSqlType;
@class IOSObjectArray;
@protocol AndroidDatabaseCursor;

@interface CoTouchlabSqueakyFieldTypesDateLongType : CoTouchlabSqueakyFieldTypesBaseDateType

#pragma mark Public

+ (CoTouchlabSqueakyFieldTypesDateLongType *)getSingleton;

- (jboolean)isEscapedValue;

- (id)javaToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)obj;

- (id)parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withNSString:(NSString *)defaultStr;

- (id)resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                              withAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results
                                                withInt:(jint)columnPos;

- (id)sqlArgToJavaWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)sqlArg
                                              withInt:(jint)columnPos;

#pragma mark Protected

- (instancetype)initWithCoTouchlabSqueakyFieldSqlType:(CoTouchlabSqueakyFieldSqlType *)sqlType
                                    withIOSClassArray:(IOSObjectArray *)classes;

@end

J2OBJC_STATIC_INIT(CoTouchlabSqueakyFieldTypesDateLongType)

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesDateLongType *CoTouchlabSqueakyFieldTypesDateLongType_getSingleton();

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesDateLongType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesDateLongType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesDateLongType *new_CoTouchlabSqueakyFieldTypesDateLongType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesDateLongType *create_CoTouchlabSqueakyFieldTypesDateLongType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyFieldTypesDateLongType)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesDateLongType")
