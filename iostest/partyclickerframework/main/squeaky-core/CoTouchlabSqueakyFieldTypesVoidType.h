//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesVoidType")
#ifdef RESTRICT_CoTouchlabSqueakyFieldTypesVoidType
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesVoidType 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyFieldTypesVoidType 1
#endif
#undef RESTRICT_CoTouchlabSqueakyFieldTypesVoidType

#if !defined (CoTouchlabSqueakyFieldTypesVoidType_) && (INCLUDE_ALL_CoTouchlabSqueakyFieldTypesVoidType || defined(INCLUDE_CoTouchlabSqueakyFieldTypesVoidType))
#define CoTouchlabSqueakyFieldTypesVoidType_

#define RESTRICT_CoTouchlabSqueakyFieldTypesBaseDataType 1
#define INCLUDE_CoTouchlabSqueakyFieldTypesBaseDataType 1
#include "CoTouchlabSqueakyFieldTypesBaseDataType.h"

@class CoTouchlabSqueakyFieldFieldType;
@protocol AndroidDatabaseCursor;

@interface CoTouchlabSqueakyFieldTypesVoidType : CoTouchlabSqueakyFieldTypesBaseDataType

#pragma mark Public

- (id)parseDefaultStringWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                               withNSString:(NSString *)defaultStr;

- (id)resultToSqlArgWithCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                              withAndroidDatabaseCursor:(id<AndroidDatabaseCursor>)results
                                                withInt:(jint)columnPos;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(CoTouchlabSqueakyFieldTypesVoidType)

FOUNDATION_EXPORT void CoTouchlabSqueakyFieldTypesVoidType_init(CoTouchlabSqueakyFieldTypesVoidType *self);

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesVoidType *new_CoTouchlabSqueakyFieldTypesVoidType_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CoTouchlabSqueakyFieldTypesVoidType *create_CoTouchlabSqueakyFieldTypesVoidType_init();

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyFieldTypesVoidType)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyFieldTypesVoidType")