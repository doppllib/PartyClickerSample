//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesStringBytesType")
#ifdef RESTRICT_CoTouchlabSqueakyFieldTypesStringBytesType
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesStringBytesType 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesStringBytesType 1
#endif
#undef RESTRICT_CoTouchlabSqueakyFieldTypesStringBytesType

#if !defined (CoTouchlabSqueakyFieldTypesStringBytesType_) && (INCLUDE_ALL_CoTouchlabSqueakyFieldTypesStringBytesType || defined(INCLUDE_CoTouchlabSqueakyFieldTypesStringBytesType))
#define CoTouchlabSqueakyFieldTypesStringBytesType_

#define RESTRICT_CoTouchlabSqueakyFieldTypesBaseDataType 1
#define INCLUDE_CoTouchlabSqueakyFieldTypesBaseDataType 1
#include "CoTouchlabSqueakyFieldTypesBaseDataType.h"

@class CoTouchlabSqueakyFieldFieldType;
@class CoTouchlabSqueakyFieldSqlType;
@class IOSObjectArray;
@protocol AndroidDatabaseCursor;

@interface CoTouchlabSqueakyFieldTypesStringBytesType : CoTouchlabSqueakyFieldTypesBaseDataType

#pragma mark Public

+ (CoTouchlabSqueakyFieldTypesStringBytesType *)getSingleton;

- (id)javaToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withId:(id)javaObject;

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

J2OBJC_STATIC_INIT(CoTouchlabSqueakyFieldTypesStringBytesType)

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesStringBytesType *CoTouchlabSqueakyFieldTypesStringBytesType_getSingleton();

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesStringBytesType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldTypesStringBytesType *self, CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesStringBytesType *new_CoTouchlabSqueakyFieldTypesStringBytesType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesStringBytesType *create_CoTouchlabSqueakyFieldTypesStringBytesType_initWithCoTouchlabSqueakyFieldSqlType_withIOSClassArray_(CoTouchlabSqueakyFieldSqlType *sqlType, IOSObjectArray *classes);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyFieldTypesStringBytesType)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesStringBytesType")
