//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoTouchlabSqueakyTableTableUtils")
#ifdef RESTRICT_CoTouchlabSqueakyTableTableUtils
#define INCLUDE_ALL_CoTouchlabSqueakyTableTableUtils 0
#else
#define INCLUDE_ALL_CoTouchlabSqueakyTableTableUtils 1
#endif
#undef RESTRICT_CoTouchlabSqueakyTableTableUtils

#if !defined (CoTouchlabSqueakyTableTableUtils_) && (INCLUDE_ALL_CoTouchlabSqueakyTableTableUtils || defined(INCLUDE_CoTouchlabSqueakyTableTableUtils))
#define CoTouchlabSqueakyTableTableUtils_

@class CoTouchlabSqueakyFieldFieldType;
@class IOSClass;
@class IOSObjectArray;
@class JavaLangStringBuilder;
@protocol CoTouchlabSqueakyDbSQLiteDatabase;
@protocol JavaUtilList;

@interface CoTouchlabSqueakyTableTableUtils : NSObject

#pragma mark Public

+ (void)addPrimaryKeySqlWithCoTouchlabSqueakyFieldFieldTypeArray:(IOSObjectArray *)fieldTypes
                                                withJavaUtilList:(id<JavaUtilList>)additionalArgs;

+ (void)addUniqueComboSqlWithCoTouchlabSqueakyFieldFieldTypeArray:(IOSObjectArray *)fieldTypes
                                                 withJavaUtilList:(id<JavaUtilList>)additionalArgs;

+ (void)appendColumnArgWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb
             withCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType
                                withJavaUtilList:(id<JavaUtilList>)additionalArgs;

+ (void)appendEscapedEntityNameWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb
                                            withNSString:(NSString *)name;

+ (void)appendEscapedWordWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb
                                      withNSString:(NSString *)word;

+ (void)clearTableWithCoTouchlabSqueakyDbSQLiteDatabase:(id<CoTouchlabSqueakyDbSQLiteDatabase>)connectionSource
                                           withIOSClass:(IOSClass *)clazz;

+ (jint)createTablesWithCoTouchlabSqueakyDbSQLiteDatabase:(id<CoTouchlabSqueakyDbSQLiteDatabase>)connectionSource
                                        withIOSClassArray:(IOSObjectArray *)clazz;

+ (jint)createTablesIfNotExistsWithCoTouchlabSqueakyDbSQLiteDatabase:(id<CoTouchlabSqueakyDbSQLiteDatabase>)connectionSource
                                                   withIOSClassArray:(IOSObjectArray *)clazz;

+ (jint)dropTablesWithCoTouchlabSqueakyDbSQLiteDatabase:(id<CoTouchlabSqueakyDbSQLiteDatabase>)connectionSource
                                            withBoolean:(jboolean)ignoreErrors
                                      withIOSClassArray:(IOSObjectArray *)clazz;

+ (jint)dropViewsWithCoTouchlabSqueakyDbSQLiteDatabase:(id<CoTouchlabSqueakyDbSQLiteDatabase>)connectionSource
                                           withBoolean:(jboolean)ignoreErrors
                                     withIOSClassArray:(IOSObjectArray *)clazz;

+ (id<JavaUtilList>)getCreateTableStatementsWithCoTouchlabSqueakyDbSQLiteDatabase:(id<CoTouchlabSqueakyDbSQLiteDatabase>)connectionSource
                                                                     withIOSClass:(IOSClass *)clazz;

#pragma mark Protected

+ (void)appendBigDecimalNumericTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendBooleanTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendByteArrayTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendByteTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendCharTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendDateTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendLongStringTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendLongTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb
            withCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType;

+ (void)appendSerializableTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendShortTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)appendStringTypeWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

+ (void)configureGeneratedIdWithJavaLangStringBuilder:(JavaLangStringBuilder *)sb
                  withCoTouchlabSqueakyFieldFieldType:(CoTouchlabSqueakyFieldFieldType *)fieldType;

@end

J2OBJC_STATIC_INIT(CoTouchlabSqueakyTableTableUtils)

inline NSString *CoTouchlabSqueakyTableTableUtils_get_TAG();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *CoTouchlabSqueakyTableTableUtils_TAG;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CoTouchlabSqueakyTableTableUtils, TAG, NSString *)

FOUNDATION_EXPORT jint CoTouchlabSqueakyTableTableUtils_createTablesWithCoTouchlabSqueakyDbSQLiteDatabase_withIOSClassArray_(id<CoTouchlabSqueakyDbSQLiteDatabase> connectionSource, IOSObjectArray *clazz);

FOUNDATION_EXPORT jint CoTouchlabSqueakyTableTableUtils_createTablesIfNotExistsWithCoTouchlabSqueakyDbSQLiteDatabase_withIOSClassArray_(id<CoTouchlabSqueakyDbSQLiteDatabase> connectionSource, IOSObjectArray *clazz);

FOUNDATION_EXPORT id<JavaUtilList> CoTouchlabSqueakyTableTableUtils_getCreateTableStatementsWithCoTouchlabSqueakyDbSQLiteDatabase_withIOSClass_(id<CoTouchlabSqueakyDbSQLiteDatabase> connectionSource, IOSClass *clazz);

FOUNDATION_EXPORT jint CoTouchlabSqueakyTableTableUtils_dropTablesWithCoTouchlabSqueakyDbSQLiteDatabase_withBoolean_withIOSClassArray_(id<CoTouchlabSqueakyDbSQLiteDatabase> connectionSource, jboolean ignoreErrors, IOSObjectArray *clazz);

FOUNDATION_EXPORT jint CoTouchlabSqueakyTableTableUtils_dropViewsWithCoTouchlabSqueakyDbSQLiteDatabase_withBoolean_withIOSClassArray_(id<CoTouchlabSqueakyDbSQLiteDatabase> connectionSource, jboolean ignoreErrors, IOSObjectArray *clazz);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_clearTableWithCoTouchlabSqueakyDbSQLiteDatabase_withIOSClass_(id<CoTouchlabSqueakyDbSQLiteDatabase> connectionSource, IOSClass *clazz);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendEscapedEntityNameWithJavaLangStringBuilder_withNSString_(JavaLangStringBuilder *sb, NSString *name);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_addPrimaryKeySqlWithCoTouchlabSqueakyFieldFieldTypeArray_withJavaUtilList_(IOSObjectArray *fieldTypes, id<JavaUtilList> additionalArgs);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_addUniqueComboSqlWithCoTouchlabSqueakyFieldFieldTypeArray_withJavaUtilList_(IOSObjectArray *fieldTypes, id<JavaUtilList> additionalArgs);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendEscapedWordWithJavaLangStringBuilder_withNSString_(JavaLangStringBuilder *sb, NSString *word);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendColumnArgWithJavaLangStringBuilder_withCoTouchlabSqueakyFieldFieldType_withJavaUtilList_(JavaLangStringBuilder *sb, CoTouchlabSqueakyFieldFieldType *fieldType, id<JavaUtilList> additionalArgs);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendStringTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendLongStringTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendDateTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendBooleanTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendCharTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendByteTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendShortTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendByteArrayTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendSerializableTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendBigDecimalNumericTypeWithJavaLangStringBuilder_(JavaLangStringBuilder *sb);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_appendLongTypeWithJavaLangStringBuilder_withCoTouchlabSqueakyFieldFieldType_(JavaLangStringBuilder *sb, CoTouchlabSqueakyFieldFieldType *fieldType);

FOUNDATION_EXPORT void CoTouchlabSqueakyTableTableUtils_configureGeneratedIdWithJavaLangStringBuilder_withCoTouchlabSqueakyFieldFieldType_(JavaLangStringBuilder *sb, CoTouchlabSqueakyFieldFieldType *fieldType);

J2OBJC_TYPE_LITERAL_HEADER(CoTouchlabSqueakyTableTableUtils)

#endif

#pragma pop_macro("INCLUDE_ALL_CoTouchlabSqueakyTableTableUtils")
